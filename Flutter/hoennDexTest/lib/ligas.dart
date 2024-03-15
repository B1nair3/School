// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MyLigas extends StatelessWidget {
  const MyLigas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(98, 180, 169, 169),

      appBar: AppBar(
        title: Text("Liga das Lendas"),
        backgroundColor: const Color.fromARGB(255, 180, 44, 204),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Text("Aatrox", style: TextStyle(fontSize: 50, fontStyle: FontStyle.italic)),
            Text("Darius", style: TextStyle(color: Colors.purple)),
            Text("Renekton", style: TextStyle(backgroundColor: Colors.white)),
          ],
        ),
      ),
    );
  }
}