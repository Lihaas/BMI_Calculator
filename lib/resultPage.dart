import 'package:flutter/material.dart';

class Result extends StatefulWidget {
  @override
  _ResultState createState() => _ResultState();
}

class _ResultState extends State<Result> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Result"),
          centerTitle: true,
        ),
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Text(
                "Your Result",
                style: TextStyle(
                  fontSize: 33,
                ),
              ),
              Container(
                color: Colors.teal,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Center(
                      child: Text(
                        "OverWeight",
                        style: TextStyle(fontSize: 22),
                      ),
                    ),
                    Center(
                      child: Text(
                        "OverWeight",
                        style: TextStyle(fontSize: 22),
                      ),
                    ),
                    Center(
                      child: Text(
                        "OverWeight",
                        style: TextStyle(fontSize: 22),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
