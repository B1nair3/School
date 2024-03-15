// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';

class MyImageTest extends StatefulWidget {
  const MyImageTest({super.key});

  @override
  State<MyImageTest> createState() => _MyImageTestState();
}

class _MyImageTestState extends State<MyImageTest> {
  String choose = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            GestureDetector(
              child: SizedBox(child: Image.asset("images/eldenRing.png"), height: 300),
              onTap: () => {
                choose = "Elden Ring",
                setState((){}),
              },
            ),            
            GestureDetector(
              child: SizedBox(child: Image.asset("images/hollowKnight.png"), height: 300),
              onTap: () => {
                choose = "Hollow Knight",
                setState((){}),
              },
            ),
            Text(choose),
          ],
        ),
      ),
    );
  }
}