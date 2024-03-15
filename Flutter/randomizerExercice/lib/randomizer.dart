// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last
import 'dart:math';
import 'package:flutter/material.dart';

class MyRandomizer extends StatefulWidget {
  const MyRandomizer({super.key});

  @override
  State<MyRandomizer> createState() => _MyRandomizerState();
}

class _MyRandomizerState extends State<MyRandomizer> {
  List<String> gameList = ["Hollow Knight", "Lies of P", "Bloodborne", "Mortal Shell", "Dark souls III", "Elden Ring"];
  List<String> imageList = [
    "images/hollowKnight.png",
    "images/liesOfP.png",
    "images/bloodborne.png",
    "images/mortalShell.png",
    "images/darkSouls.png",
    "images/eldenRing.png",
  ];
  int randomNumer = 6;
  String selectedGame = "Randomize!", selectedImage = "images/unknown.png";

  void randomizer() {
    randomNumer = Random().nextInt(5);
    selectedGame = gameList[randomNumer];
    selectedImage = imageList[randomNumer];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("This is a souls like randomizer!!", style: TextStyle(color: Colors.black, fontFamily: "Game")), centerTitle: true, backgroundColor: Colors.lightBlue),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 20),
            SizedBox(child: Image.asset(selectedImage), height: 280, width: 280),
            Text(selectedGame, style: TextStyle(color: Colors.black, fontSize: 25, fontFamily: "Game")),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => {
                randomizer(),
                setState((){}),
              }, 
              child: Text("Randomize a game!", style: TextStyle(fontFamily: "Game")),
            ),
          ],
        ),
      ),
    );
  }
}