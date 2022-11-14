import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NewTaskScreen extends StatelessWidget {
  const NewTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(context),
      //body: ,
    );
  }
}

_appBar(BuildContext context) {
  return AppBar(
    backgroundColor: context.theme.backgroundColor,
    leading: GestureDetector(
      onTap: () {},
      child: Icon(
          Get.isDarkMode ? Icons.wb_sunny_outlined : Icons.nightlight_outlined,
          size: 20,
          color: Get.isDarkMode ? Colors.white : Colors.black),
    ),
    actions: const [
      Icon(
        Icons.person,
        size: 20,
      ),
      SizedBox(
        width: 20,
      ),
    ],
  );
}
