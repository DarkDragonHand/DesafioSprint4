import 'package:flutter/material.dart';
import 'package:task_list_mobile/view/home_screen.dart';
import 'package:task_list_mobile/view/initial_screen.dart';
import 'package:task_list_mobile/view/new_task_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'To Do Task List',
      initialRoute: "/home",
      routes: {
        "/initial": (context) => const InitialScreen(),
        "/home": (context) => HomeScreen(),
        "/newTask": (context) => const NewTaskScreen(),
      },
    );
  }
}
