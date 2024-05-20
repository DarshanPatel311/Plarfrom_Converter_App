import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DateProvider extends ChangeNotifier{
  DateTime time=DateTime.now();
  void DatePicker(value){
    time=value!;
    notifyListeners();
  }
}

class TimeProvider extends ChangeNotifier{
 TimeOfDay Time=TimeOfDay(hour: TimeOfDay.hoursPerDay, minute: TimeOfDay.minutesPerHour);
  void TimePicker(value){
    Time=value!;
    notifyListeners();
  }
}