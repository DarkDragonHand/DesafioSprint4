import 'package:flutter/material.dart';

class RowInitial extends StatelessWidget {
  const RowInitial({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 14),
          child: Container(
            width: 150,
            height: 200,
            decoration: const BoxDecoration(
              color: Color(0xffD0FDD4),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(100),
                bottomRight: Radius.circular(100),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 50,
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
            Container(
              width: 200,
              height: 150,
              decoration: const BoxDecoration(
                color: Color(0xffFFFFFF),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(100),
                  topLeft: Radius.circular(100),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 42),
              child: Container(
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                  color: const Color(0xff161616),
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
            ),
          ]),
        ),
      ],
    );
  }
}
