import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:task_list_mobile/components/my_button.dart';
import 'package:task_list_mobile/components/components_home/task_item.dart';
import 'package:task_list_mobile/components/components_home/texts_style.dart';
import 'package:task_list_mobile/components/themes.dart';
import 'package:task_list_mobile/controller/theme_controller.dart';
import 'package:task_list_mobile/model/task.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  static TextStyle optionStyle =
      GoogleFonts.nunito(fontSize: 20, fontWeight: FontWeight.bold);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  DateTime _selectedDate = DateTime.now();

  final ValueNotifier<List<Task>> taskList = ValueNotifier<List<Task>>([]);
  ValueNotifier<String> nameUser = ValueNotifier<String>("");

  /*@override
  void initState() {
    super.initState();
  }*/

  final int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    nameUser.value = ModalRoute.of(context)!.settings.arguments as String;
    return SafeArea(
      child: Scaffold(
        backgroundColor: context.theme.backgroundColor,
        appBar: _appBar(context),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 15,
              ),
              _addTaskBar(nameUser.value),
              const SizedBox(
                height: 15,
              ),
              _dateBar(),
              const SizedBox(height: 20),
              SizedBox(
                height: 500,
                child: ValueListenableBuilder<List<Task>>(
                  valueListenable: taskList,
                  builder: (context, tasklist, _) {
                    return ListView.builder(
                      itemCount: tasklist.length,
                      itemBuilder: (context, index) {
                        return TaskItem(
                          tasklist[index]
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _appBar(BuildContext context) {
    return AppBar(
      backgroundColor: context.theme.backgroundColor,
      elevation: 0,
      leading: GestureDetector(
        onTap: () {
          ThemeController().switchTheme();
        },
        child: Icon(
            Get.isDarkMode
                ? Icons.wb_sunny_outlined
                : Icons.nightlight_outlined,
            size: 20,
            color: Get.isDarkMode ? Colors.white : Colors.black),
      ),
      actions: [
        Icon(
          Icons.person,
          color: Get.isDarkMode ? Colors.white : Colors.black,
          size: 20,
        ),
        const SizedBox(
          width: 20,
        ),
      ],
    );
  }

  _addTaskBar(String nameUser) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              DateFormat.yMMMMd().format(DateTime.now()),
              style: subHeadingStyle,
            ),
            Text(
              "Hi $nameUser!",
              style: headingStyle,
            ),
            Text(
              "tasks for today!",
              style: bottomHeadingStyle,
            ),
          ],
        ),
        MyButton(
          label: "+ Add Task",
          onTap: () async {
            var result = await Get.toNamed(
              '/newTask',
            );
            if (result != null) {
              taskList.value = List.from(taskList.value)..add(result);
            }
          },
          width: 100,
          height: 50,
        ),
      ],
    );
  }

  _dateBar() {
    return DatePicker(
      DateTime.now(),
      width: 80,
      height: 100,
      initialSelectedDate: DateTime.now(),
      selectionColor: Get.isDarkMode ? darkHeaderColor : darkGreyColor,
      selectedTextColor: Get.isDarkMode ? Colors.black : whiteColor,
      dateTextStyle: GoogleFonts.nunito(
        textStyle: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: Colors.grey,
        ),
      ),
      dayTextStyle: GoogleFonts.nunito(
        textStyle: const TextStyle(
            fontSize: 16, fontWeight: FontWeight.w600, color: Colors.grey),
      ),
      monthTextStyle: GoogleFonts.nunito(
        textStyle: const TextStyle(
            fontSize: 14, fontWeight: FontWeight.w600, color: Colors.grey),
      ),
      onDateChange: (date) {
        _selectedDate = date;
      },
    );
  }
}
