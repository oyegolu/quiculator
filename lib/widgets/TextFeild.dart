import 'package:flutter/material.dart';
import 'package:quiculator/constants/colors.dart';

class CstmTextFeild extends StatelessWidget {
  const CstmTextFeild({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 20.0),
      child: Material(
        elevation: 3.0,
        child: TextField(
          style: TextStyle(fontSize: 46),
          decoration: InputDecoration(
              fillColor: appColors.primaryColor,
              filled: true,
              border: InputBorder.none),
          readOnly: true, // to recover cursor by readonly use showCursor
          showCursor: true,
        ),
      ),
    );
  }
}
