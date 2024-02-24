import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemeData {
  static const darkWhite = Colors.white;
  static const lightBlack = Colors.black;
  static const darkBackGround =Color(0xff141A2E);
  static ThemeData lightTheme = ThemeData(

      appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        centerTitle: true,
      ),
      textTheme: TextTheme(
        bodyLarge: GoogleFonts.elMessiri(
          fontSize: 25,
          fontWeight: FontWeight.w600,
        ),
        bodyMedium: GoogleFonts.elMessiri(
          color: Colors.black87,
          fontSize: 22,
        ),
        bodySmall: GoogleFonts.elMessiri(
          color: Colors.black87,
          fontSize: 30,
          fontWeight: FontWeight.bold,
        )
      ),
      brightness: Brightness.light,
      primaryColor: Color(0xffB7935F),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: Color(0xffB7935F),
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.black87,
      ));



  static ThemeData darkTheme = ThemeData(  appBarTheme: AppBarTheme(
    backgroundColor: Colors.transparent,
    centerTitle: true,
  ),
      textTheme: TextTheme(
          bodyLarge: GoogleFonts.elMessiri(
            fontSize: 25,
            fontWeight: FontWeight.w600,
          ),
          bodyMedium: GoogleFonts.elMessiri(
            color: Colors.black87,
            fontSize: 22,
          ),
          bodySmall: GoogleFonts.elMessiri(
            color: Colors.black87,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          )
      ),
      brightness: Brightness.dark,
      primaryColorDark:Color(0xffFACC1D),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: Color(0xff141A2E),
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        unselectedItemColor: Colors.white,
        selectedItemColor: Color(0xffFACC1D),
      ));
}
