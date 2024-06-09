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

String taglisttostring(List<RFIDTagsdataStruct> taglist) {
  if (taglist == null || taglist.isEmpty) {
    return '[]';
  }
  final buffer = StringBuffer('[');
  for (int i = 0; i < taglist.length; i++) {
    buffer.write('{"tagid":"${taglist[i].tagID}"}');
    if (i < taglist.length - 1) {
      buffer.write(',');
    }
  }
  buffer.write(']');
  return buffer.toString();
}

bool isNull(String? dropDown) {
  if (dropDown == null || dropDown.isEmpty) {
    return true;
  } else {
    return false;
  }
}

String? toString(double? input) {
  if (input == null) {
    return 0.toString();
  } else {
    String result = input.toString();
    return result;
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
) {
  List<QueriedTagDataStruct> result = [];
  if (id == null ||
      printDate == null ||
      washingCount == null ||
      lastTimeWashed == null ||
      line == null ||
      lifetime == null) {
  } else {
    for (int i = 0; i < id.length; i++) {
      QueriedTagDataStruct element = QueriedTagDataStruct(
        tagID: id[i],
        printDate: printDate[i],
        washingCount: washingCount[i],
        lastTimeWashed: lastTimeWashed[i],
        line: line[i],
        lifetime: lifetime[i],
      );
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
