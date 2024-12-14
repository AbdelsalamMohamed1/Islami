import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/data_features/my_app_colors.dart';

class MyThemeData {
  static final ThemeData lightTheme = ThemeData(
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
    ),
    scaffoldBackgroundColor: Colors.transparent,
      textTheme: TextTheme(
        titleLarge:GoogleFonts.elMessiri(
        fontSize: 36,
        fontWeight: FontWeight.w700,
        color: MyAppColors.white
      ),
        titleMedium:GoogleFonts.elMessiri(
            fontSize: 24,
            fontWeight: FontWeight.w700,
            color: MyAppColors.black
        ),
        titleSmall: GoogleFonts.elMessiri(
            fontSize: 24,
            fontWeight: FontWeight.w700,
            color: MyAppColors.primary
        ),
        bodyLarge: GoogleFonts.elMessiri(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: MyAppColors.white
        ),
        bodyMedium: GoogleFonts.elMessiri(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: MyAppColors.black
        ),
        bodySmall: GoogleFonts.elMessiri(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: MyAppColors.primary
        ),
        displayLarge: GoogleFonts.elMessiri(
            fontSize: 16,
            fontWeight: FontWeight.w700,
            color: MyAppColors.white
        ),
        displayMedium: GoogleFonts.elMessiri(
            fontSize: 16,
            fontWeight: FontWeight.w700,
            color: MyAppColors.black
        ),
        displaySmall: GoogleFonts.elMessiri(
            fontSize: 16,
            fontWeight: FontWeight.w700,
            color: MyAppColors.primary
        ),
  )
  );
}