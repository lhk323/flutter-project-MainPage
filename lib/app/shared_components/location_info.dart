import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:daily_task/app/utils/helpers/app_helpers.dart';

class LocationData {
  final String latitude;
  final String longitude;

  const LocationData({
    required this.latitude,
    required this.longitude,
  });
}