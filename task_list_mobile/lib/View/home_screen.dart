import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_list_mobile/Components/task_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
              const SizedBox(height: 30,),
              SizedBox(
                  height: 500,
                  child: ListView.builder(itemBuilder: (context, index) {
                    return TaskItem();
                  })),
            ],
          ),
        ),
        //bottomNavigationBar: ,
        //floatingActionButton: ,
      ),
    );
  }
}
