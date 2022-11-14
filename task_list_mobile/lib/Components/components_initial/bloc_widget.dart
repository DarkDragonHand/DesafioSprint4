import 'package:flutter/material.dart';

class BlockWidget extends StatelessWidget {
  const BlockWidget({
    required this.width, required this.height, required this.color, required this.radius, super.key});

  final double width;
  final double height;
  final Color color;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(radius),
      ),
    );
  }
}
