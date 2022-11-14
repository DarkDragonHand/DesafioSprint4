import 'package:flutter/material.dart';

class HomeBottomNavigationBar extends StatelessWidget {
  const HomeBottomNavigationBar(this.selectedIndex, {super.key});

  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      iconSize: 24,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add_task),
          label: "New Task",
        ),
      ],
      currentIndex: selectedIndex,
      selectedItemColor: Colors.amber,
      onTap: (value) {},
    );
  }
}
