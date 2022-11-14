import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';


TextStyle get subHeadingStyle {
  return GoogleFonts.nunito(
    textStyle: TextStyle(
      color: Get.isDarkMode ? Colors.white : const Color(0xff161616),
      fontSize: 18,
      fontWeight: FontWeight.bold,
    ),
  );
}

TextStyle get headingStyle {
  return GoogleFonts.nunito(
    textStyle: TextStyle(
      color: Get.isDarkMode ? Colors.white : const Color(0xff161616),
      fontSize: 30,
      fontWeight: FontWeight.bold,
    ),
  );
}

TextStyle get bottomHeadingStyle {
  return GoogleFonts.nunito(
    textStyle: TextStyle(
      color: Get.isDarkMode ? Colors.white : Colors.grey,
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
  );
}

TextStyle get titleStyle {
  return GoogleFonts.nunito(
    textStyle: TextStyle(
      color: Get.isDarkMode ? Colors.white : const Color(0xff161616),
      fontSize: 16,
      fontWeight: FontWeight.w400,
    ),
  );
}

TextStyle get subTitleStyle {
  return GoogleFonts.nunito(
    textStyle: TextStyle(
      color: Get.isDarkMode ? Colors.grey[100] : Colors.grey[600],
      fontSize: 14,
      fontWeight: FontWeight.w400,
    ),
  );
}

class DayText extends StatelessWidget {
  const DayText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      DateFormat.yMMMMd().format(DateTime.now()),
      style: subHeadingStyle,
    );
  }
}
