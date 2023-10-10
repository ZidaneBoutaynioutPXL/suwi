import 'dart:ffi';

import 'package:flutter/material.dart';
import '../data/sp_helper.dart';
import '../data/session.dart';

class SessionsScreen extends StatefulWidget {
  const SessionsScreen({super.key});

  @override
  State<SessionsScreen> createState() => _SessionsScreenState();
}

class _SessionsScreenState extends State<SessionsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('your training sessions'),
      ),
      body: Container(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          
        },
      ),
    );

  }

  Future<dynamic> showSessionDialog(BuildContext context) async {
    return showDialog(
      context: context,
       builder: (BuildContext (context) {
         return AlertDialog(
          
         )
       }))
  }




}