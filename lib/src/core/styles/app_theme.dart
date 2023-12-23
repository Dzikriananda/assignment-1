import 'package:assigment_1/src/core/styles/color.dart';
import 'package:assigment_1/src/core/styles/text_style.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
      textTheme: textStyle,
      colorScheme: Theme.of(context).colorScheme.copyWith(
        primary: primaryColor,
        onPrimary: onPrimaryColor,
        // secondary: secondaryColor,
        // onSecondary: onSecondaryColor,
        // background: backgroundColor,
        // onBackground: onBackgroundColor,
        // primaryContainer: primaryContainer,
        // onPrimaryContainer: onPrimaryContainer,
      )
  );
}
