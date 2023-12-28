import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

String greeting() {
  var hour = DateTime.now().hour;
  if (hour < 12) {
    return 'Good Morning';
  }
  if (hour < 17) {
    return 'Good Afternoon';
  }
  return 'Good Evening';
}

bool toTimeMustBeAfterFromTime(
  DateTime fromTime,
  DateTime toTime,
) {
  return fromTime.isBefore(toTime);
}

DateTime? today() {
  DateTime now = new DateTime.now();
  return new DateTime(now.year, now.month, now.day);
}

bool? newCustomFunction(DateTime date) {
  DateTime now = new DateTime.now();
  DateTime date = new DateTime(now.year, now.month, now.day);
  return true;
}
