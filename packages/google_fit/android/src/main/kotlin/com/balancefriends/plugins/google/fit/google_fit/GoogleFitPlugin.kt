package com.balancefriends.plugins.google.fit.google_fit

import android.app.Activity
import android.content.Context
import android.content.Intent
import androidx.annotation.NonNull
import com.balancefroends.plugins.google.fit.Messages
import com.google.android.gms.auth.api.signin.GoogleSignIn
import com.google.android.gms.common.api.Scope
import com.google.android.gms.fitness.Fitness
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

  private val scopes: Array<Scope> = arrayOf(
    Fitness.SCOPE_ACTIVITY_READ_WRITE,
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

    val isGranted = GoogleSignIn.hasPermissions(GoogleSignIn.getLastSignedInAccount(activity!!), *scopes)

    result.success(isGranted)
  }

  override fun requestAuthorization(result: Messages.Result<Boolean>) {
    if (activity == null) {
      result.success(false)
      return
    }

    authResult = result

    val isGranted = GoogleSignIn.hasPermissions(GoogleSignIn.getLastSignedInAccount(activity!!), *scopes)
    /// Not granted? Ask for permission
    if (!isGranted && activity != null) {
      GoogleSignIn.requestPermissions(
        activity!!,
        GOOGLE_FIT_PERMISSIONS_REQUEST_CODE,
        GoogleSignIn.getLastSignedInAccount(activity!!),
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
    val lastAccount = GoogleSignIn.getLastSignedInAccount(activity!!)

    if (lastAccount == null) {
      result.error(Throwable("need authorization"))
    }

    val historyClient = Fitness.getHistoryClient(activity!!, lastAccount!!)

    val estimatedSteps = DataSource.Builder()
      .setAppPackageName("com.google.android.gms")
      .setDataType(DataType.TYPE_STEP_COUNT_DELTA)
      .setType(DataSource.TYPE_DERIVED)
      .setStreamName("estimated_steps")
      .build()

    historyClient.readData(
      DataReadRequest.Builder()
        .aggregate(estimatedSteps)
        .aggregate(DataType.TYPE_MOVE_MINUTES)
        .aggregate(DataType.TYPE_CALORIES_EXPENDED)
        .aggregate(DataType.TYPE_SPEED)
        .aggregate(DataType.TYPE_DISTANCE_DELTA)
        .bucketBySession(1, TimeUnit.SECONDS)
        .setTimeRange(startTimeMillis, endTimeMillis, TimeUnit.MILLISECONDS)
        .enableServerQueries()
        .build()
    ).addOnSuccessListener { response ->
      Log.i("GOOGLE_FIT::SUCCESS", "Status : ${response.status}")
      result.success(response.toPigeon())
    }
      .addOnFailureListener { e ->
        Log.w("GOOGLE_FIT::ERROR", "There was an error adding the DataSet", e)
        result.error(Throwable("failed to get buckets"))
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
  return Messages.Session.Builder()
    .setActivity(activity)
    .setDescription(description)
    .setIndentifier(identifier)
    .setName(name)
    .build()
}

fun DataSet.toPigeon(): Messages.DataSet {
  Log.d("GOOGLE_FIT", "DataType Name : ${ dataType.name }")
  Log.d("GOOGLE_FIT", "DataPointSize : ${ dataPoints.size }")

  return Messages.DataSet.Builder()
    .setDataPoints(dataPoints.map { it.toPigeon() }.toList())
    .setDataType(dataType.toPigeon())
    .setDataSource(dataSource.toPigeon())
    .setIsEmpty(isEmpty)
    .build()

}

fun DataPoint.toPigeon(): Messages.DataPoint {
  val fields = dataType.fields
  val values = mutableListOf<Messages.DataPointValue>()

  for (field in fields) {
    Log.d("GOOGLE_FIT", "Field Name : ${ field.name }")
    Log.d("GOOGLE_FIT", "Field Format : ${ field.format }")
    val value = Messages.DataPointValue
      .Builder()
      .setValue(getValue(field).toString())
      .setValueType(field.name)
      .build()

    values += value
  }

  return Messages.DataPoint.Builder()
    .setValues(values)
    .build()
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
    DataType.TYPE_SPEED -> Messages.DataType.speed
    DataType.TYPE_STEP_COUNT_DELTA -> Messages.DataType.step
    else -> Messages.DataType.unknwon
  }
}

fun Messages.DataType.toFit(): DataType {
  return when (this) {
    Messages.DataType.calorie -> DataType.TYPE_CALORIES_EXPENDED
    Messages.DataType.duration -> DataType.TYPE_MOVE_MINUTES
    Messages.DataType.distance -> DataType.TYPE_DISTANCE_DELTA
    Messages.DataType.speed -> DataType.TYPE_SPEED
    Messages.DataType.step -> DataType.TYPE_STEP_COUNT_DELTA
    else -> throw IllegalArgumentException()
  }
}
