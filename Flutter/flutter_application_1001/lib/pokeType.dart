// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'dart:math';

import 'package:flutter/material.dart';

class MyType extends StatefulWidget {
  const MyType({super.key});

  @override
  State<MyType> createState() => _MyTypeState();
}

class _MyTypeState extends State<MyType> {
  int random = Random().nextInt(3);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Choose a poke type!", style: TextStyle(color: Colors.white),), centerTitle: true, backgroundColor: Colors.blue),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(child: Image.asset("images/red.png"), height: 200, width: 100),
                SizedBox(child: Image.asset("images/fighting.png"), height: 100, width: 100),
                SizedBox(child: Image.asset("images/dark.png"), height: 100, width: 100),
                SizedBox(child: Image.asset("images/psych.png"), height: 100, width: 100),
              ],  
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(child: Image.asset("images/blue.png"), height: 200, width: 100),
                
              ],  
            )
          ],
        )
      ), backgroundColor: Colors.white,
    );
  } 
}