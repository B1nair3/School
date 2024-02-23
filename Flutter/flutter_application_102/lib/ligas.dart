// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Ligas extends StatelessWidget {
      Ligas({super.key});

  final figuraBird = SizedBox(child: Image.asset('images/Aatrox.png'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Image.asset('images/Aatrox.png'),
            Text("AATROX", style: TextStyle(fontFamily: 'Blur', color: Colors.black)),
            figuraBird,
          ],
        )
      ),
    );
  }
}