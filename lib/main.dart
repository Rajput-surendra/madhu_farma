import 'package:flutter/material.dart';
import 'package:madhu_farma/Splash/splash_screen.dart';

import 'Screens/10thScreen.dart';
import 'Screens/19_Screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(debugShowCheckedModeBanner: false,
      title: 'Madhu Farma',
      theme: ThemeData(
      ),
      home: ScreenGoat()
    );
  }
}

