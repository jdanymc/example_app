import 'package:flutter/material.dart';

const pColor = Colors.red;

class Column1 extends StatelessWidget {
  String title;
  String value;
  Column1(this.title, this.value);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        Text(
          value,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
