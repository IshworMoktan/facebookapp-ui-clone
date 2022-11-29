import 'package:flutter/material.dart';
import 'package:flutter_application_1/myhomepage.dart';
import 'package:flutter_application_1/splashscreen/splashscreen.dart';
import 'package:hexcolor/hexcolor.dart';
import 'widgets/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      darkTheme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
