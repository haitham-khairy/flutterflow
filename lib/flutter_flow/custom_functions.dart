import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';

bool isNull(String? dropDown) {
  if (dropDown == null || dropDown.isEmpty) {
    return true;
  } else {
    return false;
  }
}

bool greaterOrEqual(
  double sliderInput,
  String rSSIvalue,
) {
  if ((sliderInput * -1) >= double.parse(rSSIvalue)) {
    return true;
  } else {
    return false;
  }
}

List<String> tgagsListToList(List<RFIDTagsdataStruct> data) {
  List<String> result = [];
  for (var item in data) {
    result.add(item.tagID);
  }
  return result;
}

List<QueriedTagDataStruct>? buildTagsDataList(
  List<String>? id,
  List<String>? printDate,
  List<String>? washingCount,
  List<String>? lastTimeWashed,
  List<String>? line,
  List<String>? lifetime,
  List<String>? color,
  List<String>? sku,
  List<String>? maxwashcount,
  List<String>? washoverdue,
  List<String>? status,
  List<String>? daysRemaining,
  List<String>? alarms,
  List<String>? remainingDaysInServeice,
) {
  List<QueriedTagDataStruct> result = [];
  if (id == null ||
      printDate == null ||
      washingCount == null ||
      lastTimeWashed == null ||
      line == null ||
      lifetime == null ||
      color == null ||
      sku == null ||
      maxwashcount == null ||
      washoverdue == null ||
      status == null ||
      daysRemaining == null ||
      alarms == null ||
      remainingDaysInServeice == null) {
  } else {
    for (int i = 0; i < id.length; i++) {
      QueriedTagDataStruct element = QueriedTagDataStruct(
          tagID: id[i],
          printDate: printDate[i],
          washingCount: washingCount[i],
          lastTimeWashed: lastTimeWashed[i],
          line: line[i],
          lifetime: lifetime[i],
          color: color[i],
          sku: sku[i],
          maxWashCount: maxwashcount[i],
          washOverDue: washingCount[i],
          status: status[i],
          daysRemaining: daysRemaining[i],
          alarms: alarms[i],
          remainingDaysInServeic: remainingDaysInServeice[i]);
      result.add(element);
    }
  }

  return result;
}

bool isTagsListNotEmpty(List<RFIDTagsdataStruct> listOfRFIDData) {
  if (listOfRFIDData.isEmpty || listOfRFIDData == null) {
    return false;
  } else {
    return true;
  }
}

String washBefore(
  String lastTimeWashed,
  int washSetPoint,
) {
  DateFormat dateFormat = DateFormat("MM/dd/yyyy");
  DateTime washedate = dateFormat.parse(lastTimeWashed);
  int millesecconds =
      washedate.millisecondsSinceEpoch + (washSetPoint * 24 * 60 * 60 * 1000);
  DateTime deadline = DateTime.fromMillisecondsSinceEpoch(millesecconds);
  String year = deadline.year.toString();
  String month = deadline.month.toString();
  String day = deadline.day.toString();
  return "$month/$day/$year";
}

double lifeTime(
  String lifetime,
  String remainingdaysinservice,
) {
  double result = (int.parse(remainingdaysinservice) / int.parse(lifetime));
  if (result < 0) {
    return 1.0;
  } else {
    return (1 - result);
  }
}

List<AlarmTypeStruct> buildAlarmList(
  List<String>? tagID,
  List<String>? line,
  List<String>? sku,
  List<String>? alarm,
  List<String> status,
) {
  List<AlarmTypeStruct> result = [];
  if (tagID == null || line == null || sku == null || alarm == null) {
  } else {
    for (int i = 0; i < tagID.length; i++) {
      AlarmTypeStruct elemnt = AlarmTypeStruct(
          id: tagID[i],
          line: line[i],
          sku: sku[i],
          type: alarm[i],
          status: status[i]);
      result.add(elemnt);
    }
  }
  return result;
}

Color? getColor(String status) {
  // custome function that will return a color type based on the status of the input (Green, Red, Gray) if the status is (Clean, Exceed(scrap), Need to Be Cleaned)
  switch (status) {
    case 'Clean':
      return Colors.green;
    case 'Exceed(scrap)':
      return Colors.red;
    case 'Clean Needed':
      return Colors.orange;
    default:
      return null;
  }
}

double progressBarCalculator(
  String value,
  String divider,
) {
  int upper = int.parse(value); //remaining Days in Service
  int lower = int.parse(divider); //Life Time
  return ((lower - upper) / lower);
}

double progressBarCalculator2(
  String value,
  String divider,
) {
  if (value == "") {
    value = "0";
  }
  if (divider == "") {
    divider = "0";
  }
  int upper = int.parse(value);
  int lower = int.parse(divider);
  return ((lower - upper) / lower);
}

List<String> emptyListGenerator() {
  return ['Select A Line First'];
}

String? daysinService(
  String lifeTime,
  String remainingDaysInService,
) {
  // custome function to take two strings as arguments (life_time & RemainingDaysInService) subtracts them and returns the value of (Life_time - remainingDaysInService) as string
  try {
    int lifeTimeInt = int.parse(lifeTime);
    int remainingDaysInServiceInt = int.parse(remainingDaysInService);
    int difference = lifeTimeInt - remainingDaysInServiceInt;
    return difference.toString();
  } catch (e) {
    return null;
  }
}
