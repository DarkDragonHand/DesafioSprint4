import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_list_mobile/Components/container_initial1.dart';
import 'package:task_list_mobile/Components/get_started_button.dart';
import 'package:task_list_mobile/Components/stack_initial.dart';
import 'package:task_list_mobile/Components/row_initial.dart';
import 'package:task_list_mobile/Components/texts_initial.dart';

class InitialScreen extends StatelessWidget {
  const InitialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff161616),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            RowInitial(),
            ContainerInitial1(),
            StackInitial(),
            SizedBox(height: 40),
            TextInitial1(),
            TextInitial2(),
            GetStartedButton(),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
