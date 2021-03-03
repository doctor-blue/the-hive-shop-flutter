import 'package:flutter/material.dart';
import 'package:flutter_app/components/styles/colors.dart';

class HiveButton extends StatelessWidget {
  final width;
  final onPressed;
  final color;
  final text;
  final textColor;
  HiveButton(this.text,
      {this.width, this.onPressed, this.color, this.textColor});
  @override
  Widget build(BuildContext context) {
    return Container(
        width: this.width,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(primary: this.color),
          onPressed: this.onPressed,
          child: Text(
            this.text,
            style: TextStyle(
                color: this.textColor == null ? primaryColor : this.textColor),
          ),
        ));
  }
}
