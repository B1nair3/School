// ignore_for_file: prefer_const_constructors, sort_child_properties_last, curly_braces_in_flow_control_structures, must_be_immutable, prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';
import 'package:steam/game.dart';

class MyRogueLike extends StatefulWidget {
  List<Game> gameList = [];
  MyRogueLike(this.gameList, {super.key});

  @override
  State<MyRogueLike> createState() => _MyRogueLikeState();
}

class _MyRogueLikeState extends State<MyRogueLike> {
  bool csotnControl = false, hkControl = false, bpControl = false;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Rogue likes", style: TextStyle(color: Colors.white)), centerTitle: true, backgroundColor: Colors.black),
      body: SingleChildScrollView(child: Container(
        height: double.tryParse('1080'),
        width: double.tryParse('1000'),
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
              SizedBox(child: Image.asset("images/deadCells.png"), height: 200),
              SizedBox(height: 5),
              SizedBox(
                child: CheckboxListTile(
                  title: Text(widget.gameList[0].getName, style: TextStyle(color: Colors.white)),
                  subtitle: Text(widget.gameList[0].getPrice.toString() + "\$", style: TextStyle(color: Colors.white)),
                  secondary: Icon(Icons.monetization_on, color: Colors.green),
                  value: csotnControl, 
                  onChanged: (value) {
                    csotnControl = value!;
                    setState(() {});
                  }
                ), width: 300, height: 110,
              ),

              SizedBox(child: Image.asset("images/niceDeath.png"), height: 200), 
              SizedBox(
                child: CheckboxListTile(
                  title: Text(widget.gameList[1].getName, style: TextStyle(color: Colors.white)),
                  subtitle: Text(widget.gameList[1].getPrice.toString() + "\$", style: TextStyle(color: Colors.white)),
                  secondary: Icon(Icons.monetization_on, color: Colors.green),
                  value: hkControl, 
                  onChanged: (value) {
                    hkControl = value!;
                    setState(() {});
                  }
                ), width: 300, height: 110,
              ),
              
              SizedBox(child: Image.asset("images/domeKeeper.png"), height: 200),
              SizedBox(
                child: CheckboxListTile(
                  title: Text(widget.gameList[2].getName, style: TextStyle(color: Colors.white)),
                  subtitle: Text(widget.gameList[2].getPrice.toString() + "\$", style: TextStyle(color: Colors.white)),
                  secondary: Icon(Icons.monetization_on, color: Colors.green),
                  value: bpControl, 
                  onChanged: (value) {
                    bpControl = value!;
                    setState(() {});
                  }
                ), width: 300, height: 110,
              ),
                  SizedBox(
                    child: FloatingActionButton(
                      onPressed: () {
                        Navigator.pop(context);
                      }, child: Text("Back", style: TextStyle(color: Colors.white)), backgroundColor: Colors.blue
                    ),
                    width: 200,
                  ),
            ],
          ),
        ),
      ),
    )
    );
  }
}