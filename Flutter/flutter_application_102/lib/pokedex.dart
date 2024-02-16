// ignore_for_file: prefer_const_constructors, camel_case_types, prefer_const_literals_to_create_immutables

import 'dart:io';

import 'package:flutter/material.dart';

class Pokedex extends StatelessWidget {
  const Pokedex({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Pokedex", style: TextStyle(fontSize: 50, color: Colors.white)),
        centerTitle: true,
      ),
      body: SingleChildScrollView(child:
        Center(
          child: Column(
            children: [
              SizedBox(height: 15),
                Row(mainAxisAlignment: MainAxisAlignment.center, 
                  children: [
                    Text("001 Bulbasaur", style: TextStyle(color: Colors.green, fontSize: 20)),
                    SizedBox(width: 20),
                    SizedBox(height: 100, width: 100, child: Image.network('https://64.media.tumblr.com/1d48bbe31fcec96ecfc2d4967d40183b/tumblr_nux74deMPv1scncwdo1_540.gif')),
                  ],
              ),
              SizedBox(height: 15),
                Row(mainAxisAlignment: MainAxisAlignment.center, 
                  children: [
                    Text("001 Bulbasaur", style: TextStyle(color: Colors.green, fontSize: 20)),
                    SizedBox(width: 20),
                    SizedBox(height: 100, width: 100, child: Image.network('https://64.media.tumblr.com/1d48bbe31fcec96ecfc2d4967d40183b/tumblr_nux74deMPv1scncwdo1_540.gif')),
                  ],
              ),
              Text("002 Ivysaur", style: TextStyle(color: Colors.green, fontSize: 20)),
              Text("003 Venusaur", style: TextStyle(color: Colors.green, fontSize: 20)),
              SizedBox(height: 10),
              Text("004 Charmander", style: TextStyle(color: Colors.red, fontSize: 20)),
              Text("005 Charmeleon", style: TextStyle(color: Colors.red, fontSize: 20)),
              Text("006 Charizard", style: TextStyle(color: Colors.red, fontSize: 20)),
              SizedBox(height: 10),
              Text("007 Squirtle", style: TextStyle(color: Colors.blue, fontSize: 20)),
              Text("008 Wartortle", style: TextStyle(color: Colors.blue, fontSize: 20)),
              Text("009 Blastoise", style: TextStyle(color: Colors.blue, fontSize: 20)),
              SizedBox(height: 10),
            ],
          )
        ),
      ),
      backgroundColor: Color.fromARGB(255, 247, 231, 231),
      bottomNavigationBar: BottomAppBar(
        color: Colors.red,
        height: 50,
        child: Text("Queria que fosse um quadrado", style: TextStyle(color: Colors.white, fontSize: 30), textAlign: TextAlign.center),
      ),
    );
  }
}