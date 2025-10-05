import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

extension DateTimeWeekDayExtensions on BuildContext {
  String get weekDay {
    final date = DateTime.now();
    final weekDay = DateFormat("EEEE", 'pt_BR').format(date);
    return weekDay;
  }
}
