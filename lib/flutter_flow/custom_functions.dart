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
    buffer.write('"${taglist[i].tagID}"');
    if (i < taglist.length - 1) {
      buffer.write(',');
    }
  }
  buffer.write(']');
  return buffer.toString();
}
