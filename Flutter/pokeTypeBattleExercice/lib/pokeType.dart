// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, curly_braces_in_flow_control_structures, prefer_interpolation_to_compose_strings

import 'dart:math';

import 'package:flutter/material.dart';

class MyType extends StatefulWidget {
  const MyType({super.key});

  @override
  State<MyType> createState() => _MyTypeState();
}

class _MyTypeState extends State<MyType> {
  int random = -1;
  String chosenType = "images/null.png", randomType = "images/null.png", message = "";

  void click(String option){
    random = Random().nextInt(3);
    switch(random){
      case 0:
        randomType = "images/psych.png";
        if (option == randomType) message = "Draw!";
        else if (option == "images/dark.png") message = "Win!";
        else message = "Lose!";
        break;      
      case 1:
        randomType = "images/dark.png";
        if (option == randomType) message = "Draw!";
        else if (option == "images/fighting.png") message = "Win!";
        else message = "Lose!";   
        break;      
      case 2:
        randomType = "images/fighting.png";
        if (option == randomType) message = "Draw!";
        else if (option == "images/psych.png") message = "Win!";
        else message = "Lose!";
        break;
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Fighter simulator!", style: TextStyle(color: Colors.white),), centerTitle: true, backgroundColor: Color.fromARGB(192, 0, 0, 0)),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(child: Image.asset("images/fighting.png"), height: 80, width: 80),
                Icon(Icons.arrow_forward),
                SizedBox(child: Image.asset("images/dark.png"), height: 80, width: 80),
              ],  
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(child: Image.asset("images/dark.png"), height: 80, width: 80),
                Icon(Icons.arrow_forward),
                SizedBox(child: Image.asset("images/psych.png"), height: 80, width: 80),
              ],  
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(child: Image.asset("images/psych.png"), height: 80, width: 80),
                Icon(Icons.arrow_forward),
                SizedBox(child: Image.asset("images/fighting.png"), height: 80, width: 80),
              ],  
            ),
            SizedBox(height: 20),
            Text("Choose a type to fight:", style: TextStyle(fontSize: 30)),
            SizedBox(height: 20),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () => {chosenType = "images/fighting.png", click(chosenType), setState(() {})},
                  child: SizedBox(child: Image.asset("images/fighting.png"), height: 100, width: 100),
                ),
                GestureDetector(
                  onTap: () => {chosenType = "images/dark.png", click(chosenType), setState(() {})},
                  child: SizedBox(child: Image.asset("images/dark.png"), height: 100, width: 100),
                ),
                GestureDetector(
                  onTap: () => {chosenType = "images/psych.png", click(chosenType), setState(() {})},
                  child: SizedBox(child: Image.asset("images/psych.png"), height: 100, width: 100),
                ),
              ],  
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("   Me", style: TextStyle(fontSize: 20)),
                SizedBox(child: Image.asset("images/red.png"), height: 200, width: 100),
                SizedBox(child: Image.asset(chosenType), height: 140, width: 140),                
              ],  
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Rival", style: TextStyle(fontSize: 20)),
                SizedBox(child: Image.asset("images/blue.png"), height: 200, width: 100),
                SizedBox(child: Image.asset(randomType), height: 140, width: 140),                               
              ],  
            ),
            Text(message, style: TextStyle(fontSize: 30)),
          ],
        )
      ), backgroundColor: Colors.white,
    );
  } 
}