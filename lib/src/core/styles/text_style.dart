import 'package:assigment_1/src/core/styles/color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final textStyle = TextTheme(
  displayLarge: GoogleFonts.poppins(
      fontSize: 93,
      fontWeight: FontWeight.w300,
      letterSpacing: -1.5
  ),
  displayMedium: GoogleFonts.poppins(
      fontSize: 58,
      fontWeight: FontWeight.w300,
      letterSpacing: -0.5
  ),
  displaySmall: GoogleFonts.poppins(
      fontSize: 47,
      fontWeight: FontWeight.w400
  ),
  headlineMedium: GoogleFonts.poppins(
      fontSize: 33,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.25
  ),
  headlineSmall: GoogleFonts.poppins(
      fontSize: 23,
      fontWeight: FontWeight.w400
  ),
  titleLarge: GoogleFonts.poppins(
      fontSize: 19,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.15
  ),
  titleMedium: GoogleFonts.poppins(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.15
  ),
  titleSmall: GoogleFonts.poppins(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.1
  ),
  bodyLarge: GoogleFonts.poppins(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.5
  ),
  bodyMedium: GoogleFonts.poppins(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.25
  ),
  labelLarge: GoogleFonts.poppins(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      letterSpacing: 1.25
  ),
  bodySmall: GoogleFonts.poppins(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.4
  ),
  labelSmall: GoogleFonts.poppins(
      fontSize: 10,
      fontWeight: FontWeight.w400,
      letterSpacing: 1.5
  ),
);

const TextStyle buttonTextStyle = TextStyle(
  fontFamily: 'Poppins',
  fontSize: 16,
  color: onPrimaryColor,
  fontWeight: FontWeight.w500,
);

const TextStyle hintTextStyle = TextStyle(
  fontFamily: 'Poppins',
  fontSize: 16,
  color: hintTextColor,
  fontWeight: FontWeight.w500,
);

const TextStyle appBarTitleTextStyle = TextStyle(
  fontFamily: 'Poppins',
  fontSize: 20,
  color: Colors.black,
  fontWeight: FontWeight.w600,
);

const TextStyle secondScreenName = TextStyle(
  fontFamily: 'Poppins',
  fontSize: 20,
  color: Colors.black,
  fontWeight: FontWeight.w600,
);

const TextStyle secondScreenSelectedName = TextStyle(
  fontFamily: 'Poppins',
  fontSize: 25,
  color: Colors.black,
  fontWeight: FontWeight.w600,
);

const TextStyle listItemNameTextStyle = TextStyle(
  fontFamily: 'Poppins',
  fontSize: 19,
  color: Colors.black,
  fontWeight: FontWeight.w500,
);

const TextStyle listItemEmailTextStyle = TextStyle(
  fontFamily: 'Poppins',
  fontSize: 14,
  color: Color(0XFF686777),
  fontWeight: FontWeight.w500,
);

