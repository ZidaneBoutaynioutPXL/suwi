// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:globo_fitness/screens/bmi_screen.dart';
import 'package:globo_fitness/screens/intro_screen.dart';

void main() {
  runApp(GlobeApp());
}

class GlobeApp extends StatelessWidget {
  const GlobeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blueGrey),
          routes: {
            '/': (context) => IntroScreen(),
            '/bmi':(context) => BmiScreen()
          },
          initialRoute: '/');
  }
}
