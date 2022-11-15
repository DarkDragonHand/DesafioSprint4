import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_list_mobile/components/themes.dart';

class MyButton extends StatelessWidget {
  final String label;
  final Function()? onTap;
  final double width;
  final double height;

  const MyButton({
    super.key, 
    required this.label, 
    required this.onTap, 
    required this.width, 
    required this.height});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Get.isDarkMode ? darkHeaderColor : darkGreyColor,
        ),
        child: Center(
          child: Text(
            label,
            style: const TextStyle(color: whiteColor),
          ),
        ),
      ),
    );
  }
}
