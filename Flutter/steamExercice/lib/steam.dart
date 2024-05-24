// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:steam/game.dart';
import 'package:steam/hackSlash.dart';
import 'package:steam/metroid.dart';
import 'package:steam/rogue.dart';

class MySteam extends StatefulWidget {
  const MySteam({super.key});

  @override
  State<MySteam> createState() => _MySteamState();
}

class _MySteamState extends State<MySteam> {
  List<Game> hackList = [
    Game("Castlevania Lords of Shadow 2", 14.00),
    Game("God of War III", 9.99),
    Game("Devil May Cry 5", 19.90)
  ];
  List<Game> rogueList = [
    Game("Dead Cells", 12.9),
    Game("Have a nice Death", 12.99),
    Game("Dome Keeper", 10.99)
  ];
  List<Game> metroList = [
    Game("Castlevania Symphony of the Night", 5.02),
    Game("Hollow Knight", 9.27),
    Game("Blasphemous", 20.50)  
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Welcome to steam!", style: TextStyle(color: Colors.white)), centerTitle: true, backgroundColor: Colors.black),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/background.png"),
            fit: BoxFit.cover,
            ),
        ),
        child: Padding(
          padding: EdgeInsets.all(20), 
          child: Column(
            children: [
              Text("Choose a game gender!", style: TextStyle(fontSize: 30, color: Colors.white)),
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  child: SizedBox(child: Image.asset("images/hackAndSlash.png"), height: 220), 
                  onTap: () => {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => MyHackAndSlash(hackList))),
                  },
                ),
              ),
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  child: SizedBox(child: Image.asset("images/metroidvania.png"), height: 250), 
                  onTap: () => {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => MyMetroidvania(metroList))),
                  },
                ),
              ),
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  child: SizedBox(child: Image.asset("images/rogueLike.png"), height: 190), 
                  onTap: () => {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => MyRogueLike(rogueList))),
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}