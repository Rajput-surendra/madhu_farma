import 'package:flutter/material.dart';
import 'package:madhu_farma/Splash/splash_screen.dart';

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
      home: SplashScreen()
    );
  }
}

