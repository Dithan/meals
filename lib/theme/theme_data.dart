import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final ThemeData appTheme = ThemeData(
  colorScheme: ColorScheme.fromSeed(seedColor: Colors.pink),
  primaryColor: Colors.pink,
  useMaterial3: true,
  canvasColor: Color.fromRGBO(255, 254, 229, 1),
  scaffoldBackgroundColor: Color.fromRGBO(255, 254, 229, 1),
  textTheme: TextTheme(
    // Títulos
    headlineLarge: GoogleFonts.raleway(
      fontSize: 32,
      fontWeight: FontWeight.bold,
    ),
    headlineMedium: GoogleFonts.raleway(
      fontSize: 24,
      fontWeight: FontWeight.w600,
    ),
    headlineSmall: GoogleFonts.raleway(
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
    //Textos
    bodyLarge: GoogleFonts.roboto(
      fontSize: 16,
    ),
    bodyMedium: GoogleFonts.roboto(
      fontSize: 14,
    ),
    bodySmall: GoogleFonts.roboto(
      fontSize: 12,
    ),
  ),
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.pink,
    foregroundColor: Colors.white,
    titleTextStyle: GoogleFonts.raleway(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
    toolbarTextStyle: GoogleFonts.raleway(
      fontSize: 18,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
  ),
);
