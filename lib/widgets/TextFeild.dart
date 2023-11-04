import 'package:flutter/material.dart';
import 'package:quiculator/constants/colors.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;

  const CustomTextField({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 20.0),
      child: Material(
        elevation: 3.0,
        child: TextField(
          minLines: 1,
          maxLines: 3,
          autofocus: true,
          controller: controller,
          style: const TextStyle(fontSize: 46,letterSpacing: 6),
          decoration: const InputDecoration(
              fillColor: appColors.primaryColor,
              filled: true,
              border: InputBorder.none),
          readOnly: true,
          // to recover cursor by readonly use showCursor
          showCursor: true,
        ),
      ),
    );
  }
}
