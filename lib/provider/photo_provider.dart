import 'package:flutter/cupertino.dart';



class PhotoProvider extends ChangeNotifier{
  void setImage() async {
    XFile? images = await picker.pickImage(source: ImageSource.gallery);
    imgpath = File(images!.path);
    notifyListeners();
  }

}