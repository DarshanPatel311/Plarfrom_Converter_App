import 'package:flutter/material.dart';
import 'package:plarfrom_converter_app/provider/Date_Provider.dart';
import 'package:plarfrom_converter_app/provider/change_os.dart';
import 'package:plarfrom_converter_app/provider/list_provider.dart';
import 'package:plarfrom_converter_app/provider/profile_provider.dart';
import 'package:plarfrom_converter_app/provider/theme_provider.dart';
import 'package:plarfrom_converter_app/view/android/home_screen.dart';
import 'package:provider/provider.dart';

import 'adaptive/os_screen.dart';

void main() {
  runApp( MultiProvider(providers: [
    ChangeNotifierProvider(create: (context) => DateProvider(),),
    ChangeNotifierProvider(create: (context) => TimeProvider(),),
    ChangeNotifierProvider(create: (context) => ProfileProvider(),),
    ChangeNotifierProvider(create: (context) => AddlistProvider(),),
    ChangeNotifierProvider(create: (context) => Themeprovider(),),
    ChangeNotifierProvider(create: (context) => Changeos(),),


  ],child: MyApp(),),);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Adaptive();


  }
}
