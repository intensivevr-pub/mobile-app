import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PointShow extends StatelessWidget {
  final int points;

  const PointShow({Key key, this.points}) : super(key: key);

  String determineForm() {
    if(this.points == 1)
      return "1 punkt";
    if(this.points % 10 > 1 && this.points % 10 < 5)
      return this.points.toString() + " punkty";
    return this.points.toString() + " punktów";
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 12.0),
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomCenter,
            colors: [Colors.green, Colors.blue]),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Masz dokładnie:",
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
            ),
          ),
          Text(
            determineForm(),
            style: TextStyle(
              color: Colors.white,
              fontSize: 32,
            ),
          ),
        ],
      ),
    );
  }
}