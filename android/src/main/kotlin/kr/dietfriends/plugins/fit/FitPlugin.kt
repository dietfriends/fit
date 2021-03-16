package kr.dietfriends.plugins.fit

import android.app.Activity
import android.content.Context
import android.content.Intent
import android.util.Log
import androidx.annotation.NonNull
import com.google.android.gms.auth.api.signin.GoogleSignIn
import com.google.android.gms.auth.api.signin.GoogleSignInAccount
import com.google.android.gms.auth.api.signin.GoogleSignInOptions
import com.google.android.gms.common.api.Scope
import com.google.android.gms.fitness.Fitness
import com.google.android.gms.fitness.FitnessOptions
import com.google.android.gms.fitness.data.DataType
import com.google.android.gms.fitness.request.DataReadRequest
import com.google.android.gms.fitness.request.SessionReadRequest
import com.google.android.gms.tasks.Tasks
import dietfriends.fitness.ActivityLog
import dietfriends.fitness.ListActivityLogsRequest
import dietfriends.fitness.ListActivityLogsResponse

import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.embedding.engine.plugins.activity.ActivityAware
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.Result
import io.flutter.plugin.common.PluginRegistry
import java.util.concurrent.TimeUnit
import kotlin.concurrent.thread

const val GOOGLE_FIT_PERMISSIONS_REQUEST_CODE = 1111

/** FitPlugin */
class FitPlugin : FlutterPlugin, Messages.FitApi, ActivityAware, PluginRegistry.ActivityResultListener {
  companion object {
    val TAG = "FitPlugin"
  }

  var applicationContext: Context? = null
  var activity: Activity? = null
  var mPermissionResult: Messages.Result<Messages.BoolValue>? = null

  override fun onAttachedToEngine(
      @NonNull flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
    applicationContext = flutterPluginBinding.applicationContext
    Messages.FitApi.setup(flutterPluginBinding.binaryMessenger, this)
  }


  override fun onDetachedFromEngine(@NonNull binding: FlutterPlugin.FlutterPluginBinding) {
    Messages.FitApi.setup(binding.binaryMessenger, null)
    applicationContext = null
  }

  override fun initialize() {
    TODO("Not yet implemented")
  }

  override fun dispose() {
    TODO("Not yet implemented")
  }

  override fun getActivityType(arg: Messages.ProtoWrapper?): Messages.ProtoWrapper {
    TODO("Not yet implemented")
  }


  override fun onAttachedToActivity(binding: ActivityPluginBinding) {
    activity = binding.activity
    binding.addActivityResultListener(this)
  }

  override fun onDetachedFromActivityForConfigChanges() {
    activity = null
  }

  override fun onReattachedToActivityForConfigChanges(binding: ActivityPluginBinding) {
    activity = binding.activity
    binding.addActivityResultListener(this)
  }

  override fun onDetachedFromActivity() {
    activity = null
  }


  private fun googleSignInAccount(): GoogleSignInAccount {
    return GoogleSignIn.getLastSignedInAccount(activity)!!
  }

  override fun onActivityResult(requestCode: Int, resultCode: Int, data: Intent?): Boolean {
    Log.i(TAG, "onActivityResult")
    if (requestCode == GOOGLE_FIT_PERMISSIONS_REQUEST_CODE) {
      if (resultCode == Activity.RESULT_OK) {
        Log.i(TAG, "Access Granted!")
        mPermissionResult?.success(Messages.BoolValue().apply { value = true })
      } else if (resultCode == Activity.RESULT_CANCELED) {
        Log.i(TAG, "Access Denied!")
        mPermissionResult?.success(Messages.BoolValue().apply { value = false });
      }
    }
    return false
  }

  override fun checkPermission(result: Messages.Result<Messages.BoolValue>) {
    Log.i(TAG, "checkPermission")

    val fitnessOptions = FitnessOptions.builder()
        .addDataType(DataType.AGGREGATE_ACTIVITY_SUMMARY, FitnessOptions.ACCESS_READ)
        .addDataType(DataType.TYPE_CALORIES_EXPENDED, FitnessOptions.ACCESS_READ)
        .build()
    mPermissionResult = result

    try {
      val isGranted = GoogleSignIn.hasPermissions(GoogleSignIn.getLastSignedInAccount(activity),
          fitnessOptions)
      val signInAccount = googleSignInAccount()
      /// Not granted? Ask for permission
      if (!isGranted) {
        Log.i(TAG, "Not granted, Ask for permission")
        GoogleSignIn.requestPermissions(activity!!, GOOGLE_FIT_PERMISSIONS_REQUEST_CODE,
            signInAccount,
            FitnessOptions.builder()
                .addDataType(DataType.AGGREGATE_ACTIVITY_SUMMARY, FitnessOptions.ACCESS_READ)
                .addDataType(DataType.TYPE_CALORIES_EXPENDED, FitnessOptions.ACCESS_READ)
                .build())
      } else {
        Log.i(TAG, "Permission already granted")
        /// Permission already granted
        result.success(Messages.BoolValue().apply { value = true })
      }
    } catch (e: Throwable) {
      Log.e(TAG, "check permission error", e)
      throw e
    }
  }

  override fun listActivityLogs(arg: Messages.ProtoWrapper,
      result: Messages.Result<Messages.ProtoWrapper>) {

    val request = ListActivityLogsRequest.parseFrom(arg.proto)
    val endTime = request.endTime
    val startTime = request.startTime
    Log.d(TAG, "Range Start: $startTime")
    Log.d(TAG, "Range End: $endTime")

    thread {
      try {
        val fitnessOptions = FitnessOptions.builder().addDataType(
            DataType.TYPE_CALORIES_EXPENDED).build()
        val googleSignInAccount = GoogleSignIn.getAccountForExtension(applicationContext!!,
            fitnessOptions)

        val readRequest =
            SessionReadRequest.Builder()
                // The data request can specify multiple data types to return, effectively
                // combining multiple data queries into one call.
                // This example demonstrates aggregating only one data type.
                // .aggregate(DataType.AGGREGATE_ACTIVITY_SUMMARY)
                // Analogous to a "Group By" in SQL, defines how data should be aggregated.
                // bucketByTime allows for a time span, whereas bucketBySession would allow
                // bucketing by "sessions".
//                .bucketByTime(1, TimeUnit.DAYS)
                //.setTimeRange(startTime.toLong(), endTime.toLong(), TimeUnit.SECONDS)
                .read(DataType.TYPE_CALORIES_EXPENDED)
                .setTimeInterval(startTime, endTime, TimeUnit.MILLISECONDS)
                .setSessionName("TEST")
                .build()

        val task = Fitness.getSessionsClient(applicationContext!!, googleSignInAccount).readSession(
            readRequest)

        val sessions = Tasks.await(task).sessions
        Log.i(TAG, "sessions : ${sessions.size}")
        val datas = sessions.map {
          ActivityLog.newBuilder().setActivityId(it.activity)
              .setActivityType(it.identifier).build()
        }
        val response = ListActivityLogsResponse.newBuilder().addAllActivityLogs(datas).build()
        activity!!.runOnUiThread {
          result.success(Messages.ProtoWrapper().apply { proto = response.toByteArray() })
        }
      } catch (e: Throwable) {
        Log.e(TAG, "listActivityLogs error", e)
        activity!!.runOnUiThread {
          throw e
        }
      }

    }


  }
}
