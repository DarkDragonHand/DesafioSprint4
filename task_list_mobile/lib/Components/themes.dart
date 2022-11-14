import 'package:flutter/material.dart';

const Color whiteColor = Colors.white;
const Color darkGreyColor = Color(0xff121212);
const Color darkHeaderColor = Color(0xff424242);

class Themes {
  static final light = ThemeData(
    backgroundColor: whiteColor,
    primaryColor: whiteColor,
    brightness: Brightness.light,
  );

  static final dark = ThemeData(
    backgroundColor: darkGreyColor,
    primaryColor: darkGreyColor,
    brightness: Brightness.dark,
  );
}