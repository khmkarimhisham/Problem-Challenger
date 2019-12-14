import 'package:flutter/material.dart';
import 'package:problem_challenger/home.dart';

class ResultPage extends StatefulWidget {
  final int marks;
  ResultPage({Key key, @required this.marks}) : super(key: key);
  @override
  _ResultPageState createState() => _ResultPageState(marks);
}

class _ResultPageState extends State<ResultPage> {
  List<String> images = [
    "images/success.png",
    "images/good.png",
    "images/bad.png",
  ];

  String image;
  String message;
  @override
  void initState() {
    if (marks < 25) {
      image = images[2];
      message = "You Should Try Harder..\nYou Scored $marks";
    } else if (marks < 35) {
      image = images[1];
      message = "You Can Do Better..\nYou Scored $marks";
    } else {
      image = images[0];
      message = "You Did Very Well..\nYou Scored $marks";
    }
    super.initState();
  }

  int marks;
  _ResultPageState(this.marks);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Result"),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
              flex: 7,
              child: Material(
                child: Container(
                    child: Column(
                  children: <Widget>[
                    Material(
                      child: Container(
                        child: ClipRect(
                          child: Image(
                            image: AssetImage(image),
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: Text(
                        message,
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 20.0,
                          fontFamily: "Quando",
                        ),
                      ),
                    )
                  ],
                )),
              )),
          Expanded(
            flex: 3,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => HomePage(),
                    ));
                  },
                  child: Text(
                    "Continue",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  padding: EdgeInsets.symmetric(
                    vertical: 15,
                    horizontal: 30,
                  ),
                  color: Colors.green,
                  splashColor: Colors.green[900],
                  highlightColor: Colors.green[900],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
