import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'colors.dart';

ThemeData lightTheme = ThemeData.light().copyWith(
  primaryColor: accentColor,
  textTheme: GoogleFonts.interTextTheme(
    ThemeData.light().textTheme,
  ),
  visualDensity: VisualDensity.adaptivePlatformDensity,
  scaffoldBackgroundColor: Colors.white,
  tabBarTheme: TabBarTheme(
    unselectedLabelStyle: font,
    labelStyle: fontStyle(color: Colors.black),
    labelColor: black,
    unselectedLabelColor: Colors.black,
    indicator: UnderlineTabIndicator(
      borderSide: BorderSide(
        color: black,
        width: 2.0,
      ),
    ),
  ),
  colorScheme: ColorScheme.fromSwatch().copyWith(secondary: black),
);

IconThemeData iconTheme = IconThemeData(color: black);

TextStyle fontStyle(
    {Color color = Colors.black,
    FontWeight fontWeight = FontWeight.normal,
    double size = 12}) {
  return GoogleFonts.inter(
    fontSize: size,
    color: color,
    fontWeight: fontWeight,
  );
}

var font = GoogleFonts.inter();

FontWeight bold = FontWeight.bold;

FontWeight semiBold = FontWeight.w400;
