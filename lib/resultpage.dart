import 'package:flutter/material.dart';
import 'package:problem_challenger/home.dart';

class ResultPage extends StatefulWidget {
  final int marks;
  ResultPage({Key key, @required this.marks}) : super(key: key);
  @override
  _ResultPageState createState() => _ResultPageState(marks);
}

class _ResultPageState extends State<ResultPage> {
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
              child: Column(
                children: <Widget>[
                  Material(
                    child: Container(
                      child: ClipRect(
                        child: Image(
                          image: AssetImage("images/result.png"),
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      "Congratulations You Scored $marks Marks",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontFamily: "Quando",
                      ),
                    ),
                  )
                ],
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
