import 'package:flutter/material.dart';

class Rowtext extends StatelessWidget {
  String uppertext;
  String lowertext;

  Rowtext({this.uppertext, this.lowertext});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "$uppertext",
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          '$lowertext',
          style: TextStyle(fontSize: 11),
        ),
      ],
    );
  }
}