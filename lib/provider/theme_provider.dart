
import 'package:flutter/material.dart';

class Themeprovider extends ChangeNotifier
{
  bool dark=false;

  void theme(bool value)
  {
    dark=value;

    notifyListeners();
  }

}




