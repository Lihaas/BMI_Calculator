import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'IconContanor.dart';
import 'ReuseableCard.dart';

class InputData extends StatefulWidget {
  @override
  _InputDataState createState() => _InputDataState();
}

class _InputDataState extends State<InputData> {
  double BottomHeight = 60;
  Color UnActiveCardColor = Color(0xFFd50000);
  Color ActiveColor = Color(0xFF9b0000);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReuseableCard(
                      colors: UnActiveCardColor,
                      cardMake: IconContanor(
                        icon: FontAwesomeIcons.venus,
                        label: "FEMALE",
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReuseableCard(
                      colors: UnActiveCardColor,
                      cardMake: IconContanor(
                        icon: FontAwesomeIcons.mars,
                        label: "MALE",
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: ReuseableCard(colors: UnActiveCardColor),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReuseableCard(colors: UnActiveCardColor),
                  ),
                  Expanded(
                    child: ReuseableCard(colors: UnActiveCardColor),
                  )
                ],
              ),
            ),
            Container(
              color: ActiveColor,
              height: BottomHeight,
            )
          ],
        ),
      ),
    );
  }
}
