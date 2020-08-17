import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class IconContanor extends StatelessWidget {
  IconContanor({@required this.icon, this.label});

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          child: Icon(
            icon,
            size: 80,
            color: Colors.white,
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          label,
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
