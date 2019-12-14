import 'dart:async';
import 'package:problem_challenger/home.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (context) => HomePage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image(
              image: AssetImage('images/splash_screen_img.png'),
              height: 170.0,
            ),
            Text(
              "Problem Challenger",
              style: TextStyle(
                fontSize: 35.0,
                color: Colors.white,
                fontFamily: "Satisfy",
              ),
            )
          ],
        ),
      ),
    );
  }
}
