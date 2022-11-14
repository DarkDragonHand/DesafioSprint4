import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class TextAuthentication extends StatelessWidget {
  const TextAuthentication({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: TextAlign.center,
      "How can I call you?",
      style: GoogleFonts.nunito(
        color: Colors.white,
        fontSize: 40,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
