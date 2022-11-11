import 'package:flutter/material.dart';

class ContainerInitial1 extends StatelessWidget {
  const ContainerInitial1({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          width: 350,
          height: 150,
          decoration: const BoxDecoration(
            color: Color(0xffE7E5E6),
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(100),
              bottomRight: Radius.circular(100),
            ),
          ),
        ),
      ),
    );
  }
}