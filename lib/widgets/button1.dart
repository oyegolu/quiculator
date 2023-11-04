import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiculator/constants/colors.dart';
import 'package:quiculator/provider/cal_provider.dart';

class Button1 extends StatelessWidget {
  final String buttonText;
  final Color buttonColor;

  const Button1(
      {super.key, required this.buttonText, this.buttonColor = Colors.white});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => Provider.of<CalculatorProvider>(context, listen: false)
          .setValue(buttonText),
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
        padding: const EdgeInsets.all(24),
        backgroundColor: appColors.secondary2Color,
        elevation: 3.0,
      ),
      child: Text(
        buttonText,
        style: TextStyle(
            fontSize: 26.0, color: buttonColor, fontWeight: FontWeight.w500),
      ),
    );
  }
}
