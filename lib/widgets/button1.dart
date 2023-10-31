import 'package:flutter/material.dart';
import 'package:quiculator/constants/colors.dart';

class Button1 extends StatelessWidget {
  final String buttonText;
  final Color buttonColor;

  const Button1(
      {super.key, required this.buttonText, this.buttonColor = Colors.white});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 3.0,
      borderRadius: BorderRadius.circular(30.0),
      child:  CircleAvatar(
        backgroundColor: appColors.secondary2Color,
        radius: 30.0,
        child: Text(
          buttonText,
          style:  TextStyle(
              fontSize: 30.0,
              color: buttonColor,
              fontWeight: FontWeight.w500),
        ),
      ),);
  }
}
