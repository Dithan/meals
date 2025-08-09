import 'package:flutter/material.dart';
import 'package:meals/screens/categories_screen.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

final ThemeData appTheme = ThemeData(
  colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
  useMaterial3: true,
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
    backgroundColor: Colors.deepPurple,
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

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: appTheme,
      home: CategoriesScreen(),
    );
  }
}
