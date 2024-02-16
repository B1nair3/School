// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Teste extends StatelessWidget {
  const Teste({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Exercice 1", style: TextStyle(color: Colors.white)), backgroundColor: Colors.blue, centerTitle: true),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 50),
              Text("Eu", style: TextStyle(backgroundColor: Colors.blue, fontSize: 30)),
              SizedBox(height: 50),
              Text("Amo", style: TextStyle(backgroundColor: Colors.red, fontSize: 30)),
              SizedBox(height: 50),

              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("A", style: TextStyle(backgroundColor: Colors.yellow, fontSize: 30)),
                  SizedBox(width: 50),
                  Text("Aula", style: TextStyle(backgroundColor: Colors.red, fontSize: 30)),
                  SizedBox(width: 50),
                  Text("Da", style: TextStyle(backgroundColor: Colors.yellow, fontSize: 30)),
                ],
              ),

              SizedBox(height: 50),
              Text("Tânia", style: TextStyle(backgroundColor: Color.fromARGB(255, 233, 30, 216), fontSize: 30)),
              SizedBox(height: 50),
              Image.network('data:image/png;base64,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')
            ],
          ),
        )
      ),
    );
  }
}