// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MenuBottem extends StatelessWidget {
  const MenuBottem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: (int index) {
        switch (index) {
          case 0:
            Navigator.pushNamed(context ,'/');
            break;
          case 1:
            Navigator.pushNamed(context ,'/bmi');
            break;
        }
      },
      items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.home),
             label: 'Home'
             ),
        BottomNavigationBarItem(
            icon: Icon(Icons.monitor_weight),
             label: 'BMI'
             ),      
      ],
    );
  }
}