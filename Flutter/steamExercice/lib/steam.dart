// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class MySteam extends StatefulWidget {
  const MySteam({super.key});

  @override
  State<MySteam> createState() => _MySteamState();
}

class _MySteamState extends State<MySteam> {
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
              GestureDetector(
                child: Image.asset("images/hackAndSlash.png"),
                onTap: () => {
                  //Navigator.push(context, MaterialPageRoute(builder: (context) => MyHackAndSlash())),
                },
              ),
              GestureDetector(
                child: Image.asset("images/metroidvania.png"),
                onTap: () => {
                  //Navigator.push(context, MaterialPageRoute(builder: (context) => MyHackAndSlash())),
                },
              ),
              GestureDetector(
                child: Image.asset("images/hackAndSlash.png"),
                onTap: () => {
                  //Navigator.push(context, MaterialPageRoute(builder: (context) => MyHackAndSlash())),
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}