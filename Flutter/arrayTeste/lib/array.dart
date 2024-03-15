// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_interpolation_to_compose_strings, curly_braces_in_flow_control_structures

import 'package:flutter/material.dart';

class MyArray extends StatefulWidget {
  const MyArray({super.key});

  @override
  State<MyArray> createState() => _MyArrayState();
}

class _MyArrayState extends State<MyArray> {
  List<int> array = [2, 4, 6 , 8, 1, 3, 5, 7, 9, 0];
  String show = "", sumString = "", highLow = "";
  int sum = 0, high = 0, low = 0;

  void showArray() {
    show = "";
    for(int i = 0; i < array.length; i++)
      if(i == array.length - 1)
        show += array[i].toString();
      else 
        show += array[i].toString() + ", ";
  }
  void sumArray() {
    sumString = "";
    sum = 0;
    for(int i = 0; i < array.length; i++)
      sum += array[i];
    sumString += sum.toString();
  }
  void showExtrems() {
    highLow = "";
    for(int i = 0; i < array.length; i++){
      if(high < array[i])
        high = array[i];

      if(low > array[i])
        low = array[i];
    }
    highLow += high.toString() + " " + low.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dart Arrays"),
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 10),
            Text("Array: " + show),
            ElevatedButton(
              onPressed: () => {
                showArray(),
                setState((){}),
              },
              child: Text("Show"),
            ),

            SizedBox(height: 30),
            Text("Sum of array items: " + sumString),
            ElevatedButton(
              onPressed: () => {
                sumArray(),
                setState((){}),
              }, 
              child: Text("Sum")
            ),
            
            SizedBox(height: 30),
            Text("Higher and lower array item: " + highLow),
            ElevatedButton(
              onPressed: () => {
                showExtrems(),
                setState((){}),
              }, 
              child: Text("Show")
            ),
          ]
        )
      )
    );
  }
}