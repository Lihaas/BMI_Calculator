import 'package:flutter/material.dart';

class ReuseableCard extends StatelessWidget {
  ReuseableCard({@required this.colors, this.cardMake});

  Widget cardMake;
  final Color colors;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardMake,
      margin: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: colors,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
