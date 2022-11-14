import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:task_list_mobile/components/components_home/texts_style.dart';
import 'package:task_list_mobile/components/components_new_task/my_input_field.dart';

class NewTaskScreen extends StatefulWidget {
  const NewTaskScreen({super.key});

  @override
  State<NewTaskScreen> createState() => _NewTaskScreenState();
}

class _NewTaskScreenState extends State<NewTaskScreen> {
  final DateTime _selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.backgroundColor,
      appBar: _appBar(context),
      body: Container(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Criar tarefa", style: headingStyle),
            const MyInputField(title: "Title", hint: "Enter your title here"),
            const MyInputField(title: "Note", hint: "Enter your note here"),
            MyInputField(
              title: "Date",
              hint: DateFormat.yMd().format(_selectedDate),
              widget: IconButton(
                icon: const Icon(Icons.calendar_today_outlined, 
                color: Colors.grey,),
                onPressed: () {

                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

_appBar(BuildContext context) {
  return AppBar(
    backgroundColor: context.theme.backgroundColor,
    elevation: 0,
    leading: GestureDetector(
      onTap: () {
        Get.back();
      },
      child: Icon(Icons.arrow_back_ios,
          size: 20, color: Get.isDarkMode ? Colors.white : Colors.black),
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

  _getDateFromUser(){
    DateTime _pickerDate = showDatePicker(
      context: context, 
      initialDate: initialDate, 
      firstDate: firstDate, 
      lastDate: lastDate)
  }
}


