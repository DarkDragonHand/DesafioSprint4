import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton(this.nameUser, this.formKey,
      {super.key});

  final String nameUser;
  final GlobalKey<FormState> formKey;

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
          if(formKey.currentState!.validate()) {
            Navigator.of(context).pushNamed("/home", arguments: nameUser);
          }
        },
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
