import 'package:flutter/widgets.dart';

class ProfileProvider extends ChangeNotifier{
  bool show=false;
  void showprofile(bool value)
  {
    show= value;
    notifyListeners();
  }
}