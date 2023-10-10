// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:globo_fitness/shared/menu_drawer.dart';
import 'package:globo_fitness/shared/menu_bottem.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('GlobeFitness')),
      drawer: MenuDrawer(),
      bottomNavigationBar: MenuBottem(),
      body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage('assets/iceland.jpg'),
            fit: BoxFit.cover,
          )),
          child: Center(
              child: Container(
                  padding: EdgeInsets.all(24),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Colors.white70,
                  ),
                  child: Text(
                    'commit to be fit\n, suwiii, be great like\n zidane and ronaldo',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 22,
                      shadows: [
                        Shadow(
                          offset: Offset(1.0, 1.0),
                          blurRadius: 3.0,
                          color: Colors.grey,
                        )
                      ],
                    ),
                  )))),
    );
  }
}


