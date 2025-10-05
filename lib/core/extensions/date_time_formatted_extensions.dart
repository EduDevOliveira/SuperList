import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

extension DateTimeWeekDayExtensions on BuildContext {
  String get formattedDate {
    final date = DateTime.now();
    final formattedDate = DateFormat("dd, MMM yyyy", 'pt_BR').format(date);
    return formattedDate;
  }
}
