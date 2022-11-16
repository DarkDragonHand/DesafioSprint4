import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key, required this.onPressed});

  final Function() onPressed;

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
        onPressed: onPressed,
        child: Text(
          textAlign: TextAlign.center,
          "Get started",
          style: GoogleFonts.nunito(
            color: const Color(0xff161616),
            fontSize: 20,
            fontWeight: FontWeight.w800,
          ),
        ));
  }
}
