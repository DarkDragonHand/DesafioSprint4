import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LetsContinueButton extends StatelessWidget {
  const LetsContinueButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          backgroundColor: Colors.white,
          minimumSize: const Size(350, 70),
        ),
        onPressed: () {
          Navigator.of(context).pushNamed("/auth");
        },
        child: Text(
          textAlign: TextAlign.center,
          "Let's continue",
          style: GoogleFonts.nunito(
            color: const Color(0xff161616),
            fontSize: 20,
            fontWeight: FontWeight.w800,
          ),
        ));
  }
}