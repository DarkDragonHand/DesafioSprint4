import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:task_list_mobile/components/themes.dart';

class MyButton extends StatelessWidget {
  final String label;
  final Function()? onTap;

  const MyButton({super.key, required this.label, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 100,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: darkGreyColor,
        ),
        child: Center(
          child: Text(
            label,
            style: const TextStyle(
              color: whiteColor
            ),
          ),
        ),
      ),
    );
  }
}
