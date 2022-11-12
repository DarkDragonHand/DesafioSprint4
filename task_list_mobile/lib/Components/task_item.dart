import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TaskItem extends StatelessWidget {
  const TaskItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        children: [
          SizedBox(
            width: 40,
            height: 50,
            child: Padding(
              padding: const EdgeInsets.only(top: 6),
              child: Text(
                "12:00 PM",
                style: GoogleFonts.nunito(
                  color: const Color(0xff161616),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Stack(alignment: Alignment.center, children: [
            Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                  color: const Color(0xff161616),
                  borderRadius: BorderRadius.circular(25)),
            ),
            Container(
              width: 10,
              height: 10,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
            ),
          ]),
          Container(
            color: const Color(0xff161616),
            width: 10,
            height: 2,
          ),
          Container(
            width: 240,
            height: 120,
            decoration: BoxDecoration(
                color: Colors.purple[100],
                borderRadius: BorderRadius.circular(25)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16, top: 16),
                  child: Text(
                    "Titulo",
                    style: GoogleFonts.nunito(
                      color: const Color(0xff161616),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Text(
                    "Descrição da tarefa aqui",
                    style: GoogleFonts.nunito(
                      color: const Color(0xff161616),
                      fontSize: 14,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Text(
                    "horario da tarefa aqui",
                    style: GoogleFonts.nunito(
                      color: const Color(0xff161616),
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: const Color(0xff161616),
            width: 20,
            height: 2,
          ),
        ],
      ),
    );
  }
}
