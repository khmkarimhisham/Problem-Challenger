import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> images = [
    "images/python_img.png",
    "images/java_img.png",
    "images/c++_img.png",
    "images/js_img.png",
  ];

  Widget customcard(String langname, String image) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: InkWell(
        child: Material(
          color: Colors.green,
          elevation: 10.0,
          borderRadius: BorderRadius.circular(10.0),
          child: Container(
            padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 10.0,
                  ),
                  child: Material(
                    child: Container(
                      color: Colors.green,
                      height: 150.0,
                      width: 150.0,
                      child: Image(
                        image: AssetImage(image),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    langname,
                    style: TextStyle(
                      fontSize: 24.0,
                      color: Colors.white,
                      fontFamily: "Alike",
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Problem Challenger"),
      ),
      body: ListView(
        children: <Widget>[
          customcard("Python", images[0]),
          customcard("Java", images[1]),
          customcard("C++", images[2]),
          customcard("JavaScript", images[3]),
        ],
      ),
    );
  }
}
