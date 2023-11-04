import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import'package:quiculator/constants/colors.dart';
import 'package:quiculator/provider/cal_provider.dart';

class Button2 extends StatelessWidget {
  const Button2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // rem we use listen fals for the setter and the functions
        // true for getters (getting the value)
        Provider.of<CalculatorProvider>(context,listen: false).setValue('=');
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
