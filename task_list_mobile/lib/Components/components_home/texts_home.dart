import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

TextStyle get subHeadingStyle {
  return GoogleFonts.nunito(
    textStyle: const TextStyle(
      color: Color(0xff161616),
      fontSize: 18,
      fontWeight: FontWeight.bold,
    ),
  );
}

TextStyle get headingStyle {
  return GoogleFonts.nunito(
    textStyle: const TextStyle(
      color: Color(0xff161616),
      fontSize: 18,
      fontWeight: FontWeight.bold,
    ),
  );
}

TextStyle get bottomHeadingStyle {
  return GoogleFonts.nunito(
    textStyle: const TextStyle(
      color: Colors.grey,
      fontSize: 20,
      fontWeight: FontWeight.bold,
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
