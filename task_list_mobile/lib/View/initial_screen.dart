import 'package:flutter/material.dart';
import 'package:task_list_mobile/components/components_initial/container_initial.dart';
import 'package:task_list_mobile/components/components_initial/lets_continue_button.dart';
import 'package:task_list_mobile/components/components_initial/row_initial.dart';
import 'package:task_list_mobile/components/components_initial/stack_initial.dart';

import 'package:task_list_mobile/components/components_initial/texts_initial.dart';


class InitialScreen extends StatelessWidget {
  const InitialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff161616),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              RowInitial(),
              ContainerInitial(),
              StackInitial(),
              SizedBox(height: 40),
              TextInitial1(),
              TextInitial2(),
              LetsContinueButton(),
              SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
