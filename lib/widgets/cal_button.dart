import 'package:flutter/material.dart';
import'package:quiculator/constants/colors.dart';

class Button2 extends StatelessWidget {
  const Button2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        //todo: make the tap option for cal button
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: appColors.secondaryColor),
        width: 60,
        height: 140,
        child: const Center(
            child: Text(
              '=',
              style: TextStyle(fontSize: 30.0),
            )),
      ),
    );
  }
}
