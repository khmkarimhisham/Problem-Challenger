import 'package:flutter/material.dart';
import 'package:problem_challenger/splash.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Problem Challenger',
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}