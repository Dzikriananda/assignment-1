import 'package:assigment_1/src/core/styles/color.dart';
import 'package:assigment_1/src/core/styles/text_style.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String buttonText;
  const CustomButton ({super.key,required this.onPressed,required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: primaryColor,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12), // <-- Radius
        ),
      ),
      onPressed: onPressed,
      child: Text(buttonText,style: buttonTextStyle),
    );
  }
}