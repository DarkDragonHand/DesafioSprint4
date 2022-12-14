import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_list_mobile/components/themes.dart';
import 'package:task_list_mobile/model/task.dart';

class TaskItem extends StatelessWidget {
  const TaskItem(this.task, {super.key});

  final Task task;

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
                task.startTime.toString(),
                style: GoogleFonts.nunito(
                  color: Get.isDarkMode ? whiteColor : const Color(0xff161616),
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
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.purple[100],
                  borderRadius: BorderRadius.circular(25)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 16, top: 16, bottom: 8, right: 16),
                    child: Text(
                      task.title,
                      style: GoogleFonts.nunito(
                        color: const Color(0xff161616),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16, right: 16),
                    child: Text(
                      task.note,
                      style: GoogleFonts.nunito(
                        color: const Color(0xff161616),
                        fontSize: 14,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 16, top: 16, right: 16, bottom: 16),
                    child: Text(
                      "${task.startTime} - ${task.endTime}",
                      style: GoogleFonts.nunito(
                        color: const Color(0xff161616),
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
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
