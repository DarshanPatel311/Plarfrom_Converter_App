import 'package:flutter/material.dart';
import 'package:plarfrom_converter_app/provider/Date_Provider.dart';
import 'package:plarfrom_converter_app/view/android/home_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp( MultiProvider(providers: [
    ChangeNotifierProvider(create: (context) => DateProvider(),),
    ChangeNotifierProvider(create: (context) => TimeProvider(),),

  ],child: MyApp(),),);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
