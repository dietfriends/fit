package com.balancefriends.plugins.google.fit.google_fit

import android.content.Context
import com.balancefroends.plugins.google.fit.Messages
import com.google.android.gms.auth.api.signin.GoogleSignIn
import com.google.android.gms.auth.api.signin.GoogleSignInOptionsExtension
import com.google.android.gms.fitness.Fitness
import com.google.android.gms.fitness.FitnessOptions
import com.google.android.gms.fitness.data.DataPoint
import com.google.android.gms.fitness.data.DataSet
import com.google.android.gms.fitness.data.DataSource
import com.google.android.gms.fitness.data.DataType


class AndroidHistoryClient(private var context: Context?) : Messages.HistoryClient {


  override fun readDailyTotal(
    dataTypeString: Messages.DataType,
    result: Messages.Result<Messages.DataSet>
  ) {
    val dataType = dataTypeString.toFit()

    val fitnessOptions: GoogleSignInOptionsExtension = FitnessOptions.builder()
      .addDataType(dataType, FitnessOptions.ACCESS_READ)
      .build()
    val googleSignInAccount = GoogleSignIn.getAccountForExtension(context!!, fitnessOptions)


    Fitness.getHistoryClient(context!!, googleSignInAccount)
      .readDailyTotal(dataType)
      .addOnCompleteListener {
        result.success(it.result.toPigeon())
      }
      .addOnFailureListener {
        result.error(it)
      }
  }


  override fun readDailyTotalFromLocalDevice(
    dataTypeMessage: Messages.DataType,
    result: Messages.Result<Messages.DataSet>
  ) {

    val dataType = dataTypeMessage.toFit()

    val fitnessOptions: GoogleSignInOptionsExtension = FitnessOptions.builder()
      .addDataType(dataType, FitnessOptions.ACCESS_READ)
      .build()
    val googleSignInAccount = GoogleSignIn.getAccountForExtension(context!!, fitnessOptions)


    Fitness.getHistoryClient(context!!, googleSignInAccount)
      .readDailyTotalFromLocalDevice(dataType)
      .addOnCompleteListener {
        result.success(it.result.toPigeon())
      }
      .addOnFailureListener {
        result.error(it)
      }
  }
}


fun DataSet.toPigeon(): Messages.DataSet {
  return Messages.DataSet.Builder()
    .setDataPoints(dataPoints.map { it.toPigeon() }.toList())
    .setDataType(dataType.toPigeon())
    .build()

}

fun DataPoint.toPigeon(): Messages.DataPoint {
  return Messages.DataPoint.Builder()
    .setDataSource(dataSource.toPigeon())
    .build()
}

fun DataSource.toPigeon(): Messages.DataSource {
  return Messages.DataSource.Builder()
    .setAppPackageName(appPackageName)
    .setDateType(dataType.toPigeon())
    .setStreamName(streamName)
    .setStreamIdentifier(streamIdentifier).build()
}

fun DataType.toPigeon(): Messages.DataType {
  return Messages.DataType.Builder()
    .setName(this.name)
    .build()
}

fun Messages.DataType.toFit(): DataType {
  return when (name) {
    "com.google.activity.summary" -> DataType.AGGREGATE_ACTIVITY_SUMMARY
    "com.google.activity.exercise" -> DataType.TYPE_WORKOUT_EXERCISE
    "com.google.calories.bmr.summary" -> DataType.AGGREGATE_BASAL_METABOLIC_RATE_SUMMARY
    "com.google.calories.bmr" -> DataType.TYPE_BASAL_METABOLIC_RATE
    else -> throw IllegalArgumentException()
  }
}
