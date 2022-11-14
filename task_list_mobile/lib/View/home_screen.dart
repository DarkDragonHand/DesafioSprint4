import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_list_mobile/components/components_home/my_button.dart';
import 'package:task_list_mobile/components/components_home/task_item.dart';
import 'package:task_list_mobile/components/components_home/texts_style.dart';
import 'package:task_list_mobile/components/themes.dart';
import 'package:task_list_mobile/controller/theme_controller.dart';


class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  DateTime _selectedDate = DateTime.now();

  final ValueNotifier<dynamic> task = ValueNotifier<dynamic>("task");

  final int selectedIndex = 0;
  static TextStyle optionStyle =
      GoogleFonts.nunito(fontSize: 20, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: context.theme.backgroundColor,
        appBar: _appBar(),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const DayText(),
              const SizedBox(
                height: 15,
              ),
              _addTaskBar(),
              const SizedBox(
                height: 15,
              ),
              _dateBar(),

              SizedBox(
                height: 200,
                child: ValueListenableBuilder(
                  valueListenable: task,
                  builder: (context, value, child) => const TaskItem(),
                ),
                /*child: ListView.builder(itemBuilder: (context, index) {
                    return TaskItem();
                  })*/
              ),
            ],
          ),
        ),
        //bottomNavigationBar: HomeBottomNavigationBar(selectedIndex)
      ),
    );
  }

  _appBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: GestureDetector(
        onTap: () {
          ThemeController().switchTheme();
        },
        child: Icon(Get.isDarkMode ? Icons.wb_sunny_outlined : Icons.nightlight_outlined, 
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

  _addTaskBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hi Guilherme!",
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
            onTap: () {
              Get.toNamed("/newTask");
            }),
      ],
    );
  }

  _dateBar() {
    return DatePicker(
      DateTime.now(),
      width: 80,
      height: 100,
      initialSelectedDate: DateTime.now(),
      selectionColor: darkGreyColor,
      selectedTextColor: whiteColor,
      dateTextStyle: GoogleFonts.nunito(
        textStyle: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: Colors.grey,
        ),
      ),
      onDateChange: (date) {
        _selectedDate = date;
      },
    );
  }
}
