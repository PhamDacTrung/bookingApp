// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:cloud_firestore/cloud_firestore.dart';

Future<bool> isTimeOverlapped(
  DateTime selectedDate,
  DateTime selectedStartTime,
  DateTime selectedEndTime,
) async {
  final appointmentsCollection =
      FirebaseFirestore.instance.collection('appointments');
  QuerySnapshot appointments =
      await appointmentsCollection.where("date", isEqualTo: selectedDate).get();
  for (DocumentSnapshot appointment in appointments.docs) {
    DateTime appointmentStartTime = appointment["start_time"].toDate();
    DateTime appointmentEndTime = appointment["end_time"].toDate();
    if (appointmentStartTime.isBefore(selectedEndTime) &&
        appointmentEndTime.isAfter(selectedStartTime)) {
      return true;
    }
  }
  return false;
}