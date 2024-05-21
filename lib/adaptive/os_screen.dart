import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plarfrom_converter_app/view/android/home_screen.dart';
import 'package:plarfrom_converter_app/view/ios/home_screen.dart';
import 'package:provider/provider.dart';
import '../provider/change_os.dart';


class Adaptive extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider.of<Changeos>(context, listen: true).istrue?MaterialApp(
      debugShowCheckedModeBanner: false,

      home: HomeScreen(),
    ):CupertinoApp(
      debugShowCheckedModeBanner: false,
      home: CupertinoHomeScreen(

      ),
    );
  }

}