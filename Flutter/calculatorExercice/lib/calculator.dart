// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_prdouble, sort_child_properties_last, prefer_doubleerpolation_to_compose_strings

import 'package:flutter/material.dart';

class MyCalculator extends StatefulWidget {
  const MyCalculator({super.key});

  @override
  State<MyCalculator> createState() => _MyCalculatorState();
}

class _MyCalculatorState extends State<MyCalculator> {

  TextEditingController inputControl = TextEditingController();
  TextEditingController inputControl2 = TextEditingController();
  String input = "";
  String input2 = "";
  double value = 0;

  void count(int which) {
    switch (which) {
      case 1:
        value = double.parse(input) + double.parse(input2);
        break;

      case 2:
        value = double.parse(input) - double.parse(input2);
        break;
        
      case 3:
        value = double.parse(input) * double.parse(input2);
        break;
      
      case 4:
        value = double.parse(input) / double.parse(input2);
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Calculator", style: TextStyle(fontSize: 24, color: Colors.white)), centerTitle: true, backgroundColor: Colors.red),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              child: TextField(
                controller: inputControl,
                onChanged: (value) => {input = inputControl.text},
                decoration: InputDecoration(
                  label: Text("Number 1"), 
                  border: OutlineInputBorder(), 
                  filled: true, 
                  fillColor: Colors.white,
                  prefixIcon: Icon(Icons.numbers) 
                  ),
              ), width: 350,
            ),
            SizedBox(height: 20),
            SizedBox(
              child: TextField(
                controller: inputControl2,
                onChanged: (value) => {input2 = inputControl2.text},
                decoration: InputDecoration(
                  label: Text("Number 2"), 
                  border: OutlineInputBorder(), 
                  filled: true, 
                  fillColor: Colors.white,
                  prefixIcon: Icon(Icons.numbers),
                ),
              ), width: 350,
            ),
            SizedBox(height: 20),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  child: FloatingActionButton(
                    onPressed: () => {setState(()=>{}), count(1)},
                    child: Text("+", style: TextStyle(color: Colors.white, fontSize: 25)),
                    backgroundColor: Colors.red,
                  ), width: 50, height: 50,
                ), SizedBox(width: 20),
                SizedBox(
                  child: FloatingActionButton(
                    onPressed: () => {setState(()=>{}), count(2)},
                    child: Text("-", style: TextStyle(color: Colors.white, fontSize: 25)),
                    backgroundColor: Colors.red,
                  ), width: 50, height: 50,
                ), SizedBox(width: 20),
                SizedBox(
                  child: FloatingActionButton(
                    onPressed: () => {setState(()=>{}), count(3)},
                    child: Text("*", style: TextStyle(color: Colors.white, fontSize: 25)),
                    backgroundColor: Colors.red,
                  ), width: 50, height: 50,
                ), SizedBox(width: 20),
                SizedBox(
                  child: FloatingActionButton(
                    onPressed: () => {setState(()=>{}), count(4)},
                    child: Text("/", style: TextStyle(color: Colors.white, fontSize: 25)),
                    backgroundColor: Colors.red,
                  ), width: 50, height: 50,
                ), SizedBox(width: 20),
                SizedBox(
                  child: FloatingActionButton(
                    onPressed: () => {setState(()=>{}), inputControl.clear(), inputControl2.clear(), value = 0},
                    child: Text("CE", style: TextStyle(color: Colors.white, fontSize: 25)),
                    backgroundColor: Colors.red,
                  ), width: 50, height: 50,
                ),
              ],
            ), SizedBox(height: 20),
            Text(value.toString(), style: TextStyle(fontSize: 30)),
          ],
        )
      ),
    );
  }
}