import 'package:flutter/cupertino.dart';

class Changeos extends ChangeNotifier{
  bool istrue=true;
  void change(bool value){
    istrue=value;
    notifyListeners();

  }

}