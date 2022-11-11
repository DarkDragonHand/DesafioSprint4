import 'package:flutter/material.dart';
import 'package:task_list_mobile/Components/bloc_widget.dart';

class StackInitial extends StatelessWidget {
  const StackInitial({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              width: 350,
              height: 150,
              decoration: const BoxDecoration(
                color: Color(0xffD0DDFD),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(100),
                  bottomLeft: Radius.circular(100),
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 50, right: 220),
            child: BlockWidget(width: 25, height: 30, color: Color(0xff161616), radius: 5)
          ),
          const Padding(
              padding: EdgeInsets.only(top: 50, right: 150),
              child: BlockWidget(
                  width: 25, height: 30, color: Colors.white, radius: 5)),
          const Padding(
              padding: EdgeInsets.only(top: 20, right: 80),
              child: BlockWidget(
                  width: 25, height: 60, color: Color(0xff161616), radius: 5)),
          const Padding(
              padding: EdgeInsets.only(top: 50, right: 10),
              child: BlockWidget(
                  width: 25, height: 30, color: Colors.white, radius: 5)),
          const Padding(
              padding: EdgeInsets.only(top: 60, left: 60),
              child: BlockWidget(
                  width: 25, height: 20, color: Color(0xff161616), radius: 5)),
          const Padding(
              padding: EdgeInsets.only(top: 60, left: 130),
              child: BlockWidget(
                  width: 25, height: 20, color: Colors.white, radius: 5)),
          const Padding(
              padding: EdgeInsets.only(top: 30, left: 200),
              child: BlockWidget(
                  width: 25, height: 50, color: Color(0xff161616), radius: 5)),
          const Padding(
              padding: EdgeInsets.only(top: 30, left: 270),
              child: BlockWidget(
                  width: 25, height: 50, color: Colors.white, radius: 5)),
          const Padding(
              padding: EdgeInsets.only(top: 10, left: 340, bottom: 20),
              child: BlockWidget(
                  width: 25, height: 90, color: Color(0xff161616), radius: 5)),
        ]);
  }
}
