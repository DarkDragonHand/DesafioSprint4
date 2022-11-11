import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextInitial1 extends StatelessWidget {
  const TextInitial1({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: TextAlign.center,
      "Plan your tasks every day",
      style: GoogleFonts.nunito(
        color: Colors.white,
        fontSize: 50,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class TextInitial2 extends StatelessWidget {
  const TextInitial2({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Text(
        textAlign: TextAlign.center,
        "Plan, manage and track all your team's tasks in one flexible app",
        style: GoogleFonts.nunito(
          color: const Color(0xffE6E4E5),
          fontSize: 20,
          //fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
