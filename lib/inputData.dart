import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'IconContanor.dart';
import 'ReuseableCard.dart';
import 'resultPage.dart';
import 'calclutorMind.dart';

enum Gender {
  male,
  female,
}

Gender SelectGender;

Color ActiveColor = Color(0xFF9c0000);
Color UnActiveCardColor = Color(0xFFd50000);
int height = 60;
int weight = 50;
int age = 22;

double BottomHeight = 50;

class InputData extends StatefulWidget {
  @override
  _InputDataState createState() => _InputDataState();
}

class _InputDataState extends State<InputData> {
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
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          SelectGender = Gender.female;
                        });
                      },
                      child: ReuseableCard(
                        colors: SelectGender == Gender.female
                            ? ActiveColor
                            : UnActiveCardColor,
                        cardMake: IconContanor(
                          icon: FontAwesomeIcons.venus,
                          label: "FEMALE",
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          SelectGender = Gender.male;
                        });
                      },
                      child: ReuseableCard(
                        colors: SelectGender == Gender.female
                            ? UnActiveCardColor
                            : ActiveColor,
                        cardMake: IconContanor(
                          icon: FontAwesomeIcons.mars,
                          label: "MALE",
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    print("2");
                  });
                },
                child: ReuseableCard(
                  colors: UnActiveCardColor,
                  cardMake: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Center(
                        child: Container(
                          margin: EdgeInsets.only(
                              left: 0, top: 10, right: 0, bottom: 0),
                          child: Text(
                            "Body Height",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                            ),
                          ),
                        ),
                      ),
                      Center(
                        child: Text(
                          height.toString() + " feet",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 38,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      buildSlider()
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReuseableCard(
                      colors: UnActiveCardColor,
                      cardMake: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                            child: Text(
                              "Weight",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 22),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                            child: Text(
                              weight.toString() + " KG",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 32,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: RounderButton(
                                  icon: FontAwesomeIcons.minus,
                                  onPressed: () {
                                    setState(() {
                                      weight--;
                                    });
                                  },
                                ),
                              ),
                              Expanded(
                                child: RounderButton(
                                  icon: FontAwesomeIcons.plus,
                                  onPressed: () {
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReuseableCard(
                      colors: UnActiveCardColor,
                      cardMake: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                            child: Text(
                              "Age",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 22),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                            child: Text(
                              age.toString() + " Yr",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 32,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: RounderButton(
                                  icon: FontAwesomeIcons.minus,
                                  onPressed: () {
                                    setState(() {
                                      age--;
                                    });
                                  },
                                ),
                              ),
                              Expanded(
                                child: RounderButton(
                                  icon: FontAwesomeIcons.plus,
                                  onPressed: () {
                                    setState(() {
                                      age++;
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                calculatorMind cm = new calculatorMind(height, weight);
                String bmi = cm.getBMI();
                String nota = cm.getNotation();
                String res = cm.getResult();
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Result(
                              Results: res,
                              BMI: bmi,
                              Notation: nota,
                            )));
              },
              child: Container(
                color: ActiveColor,
                height: BottomHeight,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Center(
                        child: Text(
                      "Result",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    )),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Slider buildSlider() {
    return Slider(
      value: height.toDouble(),
      min: 20,
      max: 200,
      label: height.round().toString(),
      onChanged: (double value) {
        setState(() {
          height = value.round();
        });
      },
    );
  }
}

class RounderButton extends StatelessWidget {
  RounderButton({@required this.icon, this.onPressed});

  final IconData icon;
  Function onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(
        icon,
        color: Colors.white,
      ),
      onPressed: onPressed,
      elevation: 6,
      constraints: BoxConstraints.tightFor(width: 50, height: 50),
      shape: CircleBorder(),
      fillColor: Colors.red,
    );
  }
}
