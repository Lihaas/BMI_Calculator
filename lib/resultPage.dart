import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  Result({@required this.Results, @required this.BMI, @required this.Notation});
  final String BMI;
  final String Results;
  final String Notation;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Result Tab"),
          centerTitle: true,
          automaticallyImplyLeading: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () => Navigator.pop(context),
          ),
        ),
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  "Your Result",
                  style: TextStyle(fontSize: 33, fontWeight: FontWeight.bold),
                ),
              ),
              Expanded(
                flex: 7,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    color: Color(0xFFd50000),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Center(
                          child: Text(
                            Results,
                            style: TextStyle(fontSize: 50, color: Colors.white),
                          ),
                        ),
                        Center(
                          child: Text(
                            BMI,
                            style: TextStyle(
                              fontSize: 120,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Center(
                          child: Text(
                            Notation,
                            style: TextStyle(
                              fontSize: 22,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    color: Color(0xFF9c0000),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Center(
                            child: Text(
                          "Re-Calculate",
                          style: TextStyle(
                            fontSize: 22,
                          ),
                        )),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
