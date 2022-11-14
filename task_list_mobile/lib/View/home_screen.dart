import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_list_mobile/components/homeBottomNavigationBar.dart';
import 'package:task_list_mobile/components/task_item.dart';
import 'package:task_list_mobile/controller/theme_controller.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final ValueNotifier<dynamic> task = ValueNotifier<dynamic>("task");

  final int selectedIndex = 0;
  static TextStyle optionStyle =
      GoogleFonts.nunito(fontSize: 20, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _appBar(),
        body: Padding(
          padding: const EdgeInsets.all(28),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Hi Guilherme!",
                style: GoogleFonts.nunito(
                  color: const Color(0xff161616),
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "tasks for today!",
                style: GoogleFonts.nunito(
                  color: Colors.grey,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 600,
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
      leading: GestureDetector(
        onTap: () {
          ThemeController().switchTheme();
        },
        child: const Icon(
          Icons.nightlight_round,
          size: 20,
        ),
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
}
