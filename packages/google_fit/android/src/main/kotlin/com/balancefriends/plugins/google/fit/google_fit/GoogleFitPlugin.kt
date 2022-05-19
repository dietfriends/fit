package com.balancefriends.plugins.google.fit.google_fit

import android.app.Activity
import android.content.Context
import android.content.Intent
import androidx.annotation.NonNull
import com.balancefroends.plugins.google.fit.Messages
import com.google.android.gms.auth.api.signin.GoogleSignIn
import com.google.android.gms.common.api.Scope
import com.google.android.gms.fitness.Fitness
import com.google.android.gms.fitness.FitnessOptions
import com.google.android.gms.fitness.data.*
import com.google.android.gms.fitness.request.DataReadRequest
import com.google.android.gms.fitness.result.DataReadResponse
import io.flutter.Log
import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.embedding.engine.plugins.activity.ActivityAware
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.PluginRegistry
import java.util.concurrent.TimeUnit

const val GOOGLE_FIT_PERMISSIONS_REQUEST_CODE = 1111

/** GoogleFitPlugin */
class GoogleFitPlugin : FlutterPlugin, ActivityAware, PluginRegistry.ActivityResultListener, Messages.GoogleFitClient {
  /// The MethodChannel that will the communication between Flutter and native Android
  ///
  /// This local reference serves to register the plugin with the Flutter Engine and unregister it
  /// when the Flutter Engine is detached from the Activity
  private lateinit var channel: MethodChannel
  private var activity: Activity? = null
  private var context: Context? = null
  private var authResult: Messages.Result<Boolean>? = null

  private val fitnessOptions = FitnessOptions.builder()
    .addDataType(DataType.TYPE_MOVE_MINUTES)
    .addDataType(DataType.TYPE_CALORIES_EXPENDED)
    .addDataType(DataType.TYPE_DISTANCE_DELTA)
    .addDataType(DataType.TYPE_SPEED)
    .build()

  private val scopes: Array<Scope> = arrayOf(
    Fitness.SCOPE_ACTIVITY_READ,
    Fitness.SCOPE_LOCATION_READ)

  override fun onAttachedToEngine(@NonNull flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
    Messages.GoogleFitClient.setup(flutterPluginBinding.binaryMessenger, this)
    context = flutterPluginBinding.applicationContext
  }

  override fun onDetachedFromEngine(@NonNull binding: FlutterPlugin.FlutterPluginBinding) {
    Messages.GoogleFitClient.setup(binding.binaryMessenger, null)
    activity = null
    authResult = null
  }

  override fun onAttachedToActivity(binding: ActivityPluginBinding) {
    binding.addActivityResultListener(this)
    activity = binding.activity
  }

  override fun onDetachedFromActivityForConfigChanges() {
    onDetachedFromActivity()
  }

  override fun onReattachedToActivityForConfigChanges(binding: ActivityPluginBinding) {
    onAttachedToActivity(binding)
  }

  override fun onDetachedFromActivity() {
    activity = null
  }


  override fun onActivityResult(requestCode: Int, resultCode: Int, data: Intent?): Boolean {
    if (requestCode == GOOGLE_FIT_PERMISSIONS_REQUEST_CODE) {
      if (resultCode == Activity.RESULT_OK) {
        Log.d("GOOGLE_FIT", "Access Granted!")
        authResult!!.success(true)
      } else if (resultCode == Activity.RESULT_CANCELED) {
        Log.d("GOOGLE_FIT", "Access Denied!")
        authResult!!.success(false)
      }
    }
    return false
  }

  override fun hasPermissions(result: Messages.Result<Boolean>) {

    if (activity == null) {
      result.success(false)
      return
    }

    val isGranted = GoogleSignIn.hasPermissions(GoogleSignIn.getAccountForExtension(activity!!, fitnessOptions), *scopes)

    result.success(isGranted)
  }

  override fun requestAuthorization(result: Messages.Result<Boolean>) {
    if (activity == null) {
      result.success(false)
      return
    }

    authResult = result

    val isGranted = GoogleSignIn.hasPermissions(GoogleSignIn.getAccountForExtension(activity!!, fitnessOptions), *scopes)
    /// Not granted? Ask for permission
    if (!isGranted && activity != null) {
      GoogleSignIn.requestPermissions(
        activity!!,
        GOOGLE_FIT_PERMISSIONS_REQUEST_CODE,
        GoogleSignIn.getAccountForExtension(activity!!, fitnessOptions),
        *scopes)
    }
    /// Permission already granted
    else {
      authResult!!.success(true)
    }
  }

  override fun aggregate(
    startTimeMillis: Long,
    endTimeMillis: Long,
    result: Messages.Result<Messages.AggregateResponse>
  ) {
    val lastAccount = GoogleSignIn.getAccountForExtension(activity!!, fitnessOptions).requestExtraScopes(*scopes)

    if (lastAccount.isExpired) {
      result.error(Throwable("need authorization"))
    }

    try {
      val historyClient = Fitness.getHistoryClient(activity!!, lastAccount)

      val estimatedSteps = DataSource.Builder()
        .setAppPackageName("com.google.android.gms")
        .setDataType(DataType.TYPE_STEP_COUNT_DELTA)
        .setType(DataSource.TYPE_DERIVED)
        .setStreamName("estimated_steps")
        .build()

      historyClient.readData(
        DataReadRequest.Builder()
          .enableServerQueries()
          .aggregate(estimatedSteps)
          .aggregate(DataType.TYPE_MOVE_MINUTES)
          .aggregate(DataType.TYPE_CALORIES_EXPENDED)
          .aggregate(DataType.TYPE_DISTANCE_DELTA)
          .aggregate(DataType.TYPE_SPEED)
          .bucketBySession(1, TimeUnit.SECONDS)
          .setTimeRange(startTimeMillis, endTimeMillis, TimeUnit.MILLISECONDS)
          .build()
      ).addOnSuccessListener { response ->
        Log.i("GOOGLE_FIT::SUCCESS", "Status : ${response.status}")
        result.success(response.toPigeon())
      }
      .addOnFailureListener { e ->
        Log.w("GOOGLE_FIT::ERROR", "There was an error adding the DataSet", e)
        result.error(Throwable("failed to get buckets"))
      }
    } catch (e: Exception) {
      Log.w("GOOGLE_FIT::ERROR", "Exception: $e")
      result.error(Throwable(e))
    }


  }
}

fun DataReadResponse.toPigeon(): Messages.AggregateResponse {
  return Messages.AggregateResponse.Builder()
    .setBuckets(buckets.map { it.toPigeon() }.toList())
    .build()
}

fun Bucket.toPigeon(): Messages.Bucket {
  return Messages.Bucket.Builder()
    .setSession(session?.toPigeon())
    .setDataSets(dataSets.map { it.toPigeon() }.toList())
    .setStartTime(getStartTime(TimeUnit.MILLISECONDS))
    .setEndTime(getEndTime(TimeUnit.MILLISECONDS))
    .build()
}

fun Session.toPigeon(): Messages.Session {
  val activitySegmentDataSource = DataSource.Builder()
    .setAppPackageName(appPackageName!!)
    .setDataType(DataType.TYPE_ACTIVITY_SEGMENT)
    .setStreamName("${name}-activity segments")
    .setType(DataSource.TYPE_RAW)
    .build()

  val activityDataPoint = DataPoint.builder(activitySegmentDataSource)
    .setActivityField(Field.FIELD_ACTIVITY, activity)
    .build()

  val activityId = activityDataPoint.getValue(Field.FIELD_ACTIVITY).asInt()

  return Messages.Session.Builder()
    .setActivity(activity)
    .setActivityType(activityId.toLong())
    .setDescription(description)
    .setIndentifier(identifier)
    .setName(name)
    .build()
}

fun DataSet.toPigeon(): Messages.DataSet {
  Log.d("GOOGLE_FIT", "DataType Name : ${ dataType.name }")
  Log.d("GOOGLE_FIT", "DataPointSize : ${ dataPoints.size }")

  return Messages.DataSet.Builder()
    .setDataPoints(dataPoints.map { it.toPigeon() }.flatten().toList())
    .setDataType(dataType.toPigeon())
    .setDataSource(dataSource.toPigeon())
    .setIsEmpty(isEmpty)
    .build()

}

fun DataPoint.toPigeon(): List<Messages.DataPoint> {
  val fields = dataType.fields
  val values = mutableListOf<Messages.DataPoint>()

  for (field in fields) {
    val value = Messages.DataPoint
      .Builder()
      .setValue(getValue(field).toString())
      .setValueType(field.name)
      .build()

    values += value
  }

  return values;
}

fun DataSource.toPigeon(): Messages.DataSource {
  return Messages.DataSource.Builder()
    .setAppPackageName(appPackageName)
    .setStreamName(streamName)
    .setStreamIdentifier(streamIdentifier).build()
}

fun DataType.toPigeon(): Messages.DataType {
  return when (this) {
    DataType.TYPE_CALORIES_EXPENDED -> Messages.DataType.calorie
    DataType.TYPE_MOVE_MINUTES -> Messages.DataType.duration
    DataType.TYPE_DISTANCE_DELTA -> Messages.DataType.distance
    DataType.AGGREGATE_SPEED_SUMMARY -> Messages.DataType.speed
    DataType.AGGREGATE_ACTIVITY_SUMMARY -> Messages.DataType.activity
    DataType.TYPE_SPEED -> Messages.DataType.speed
    DataType.TYPE_STEP_COUNT_DELTA -> Messages.DataType.step
    else -> Messages.DataType.unknwon
  }
}