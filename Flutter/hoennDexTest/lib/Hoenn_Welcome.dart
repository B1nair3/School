// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class HoennWelcome extends StatelessWidget {
  const HoennWelcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Welcome to Hoenn", style: TextStyle(fontSize: 50, color: Colors.white)),
        centerTitle: true,
      ),
      body: SingleChildScrollView(child:
        Center(
          child: Column(
            children: [
              SizedBox(height: 30),
              Row(mainAxisAlignment: MainAxisAlignment.center, 
                children: [
                  SizedBox(height: 500, width: 500, child: Image.network('https://imgix.ranker.com/user_node_img/3683/73645741/original/73645741-photo-u2065045985?auto=format&q=60&fit=crop&fm=pjpg&dpr=2&w=375')),
                ],
              ),
              SizedBox(height: 30),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 380, width: 500, 
                    child: Text("Welcome to the pokemon world! Here we are in a location called Hoenn, where a lot of incredible pokemons live! to enter your journey in this beautifull world you can choose between 3 startes! Mudkip, Torchic or Treeko! Which one will you choose?", 
                    style: TextStyle(color: Colors.black, fontSize: 30), textAlign: TextAlign.center)
                  ),   
                ],
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 100, width: 100, child: Image.network('https://media.tenor.com/cQtoIIrpSxQAAAAi/pokemon-mudkip.gif')),
                  Text("Mudkip", style: TextStyle(color: Colors.blue, fontSize: 30), textAlign: TextAlign.center),
                  SizedBox(width: 30),
                  SizedBox(height: 100, width: 100, child: Image.network('https://64.media.tumblr.com/0be5faf5d344779256e85749e30d9159/tumblr_mf1jhi0ml41rpn9eno3_500.gif')),
                  Text("Marshtomp", style: TextStyle(color: Colors.blue, fontSize: 30), textAlign: TextAlign.center),
                ],
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 100, width: 100, child: Image.network('https://transrats.neocities.org/names/sprites/swampert.gif')),
                  Text("Swampert", style: TextStyle(color: Colors.blue, fontSize: 30), textAlign: TextAlign.center),
                ],
              ),
            SizedBox(height: 40)
            ]
          ),
        ),
      ),
      backgroundColor: Color.fromARGB(255, 247, 231, 231),
      bottomNavigationBar: BottomAppBar(
        color: Colors.red,
        height: 65,
        child: Text("Hoenn is the best Region!", style: TextStyle(color: Colors.white, fontSize: 30), textAlign: TextAlign.center),
      ),
    );
  }
}