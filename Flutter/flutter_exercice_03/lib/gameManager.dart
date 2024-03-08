// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MyGameManager extends StatefulWidget {
  const MyGameManager({super.key});

  @override
  State<MyGameManager> createState() => _MyDeviyGameManager();
}

class _MyDeviyGameManager extends State<MyGameManager> {

  Text jogo1 = Text("Hollow Knight");
  Text jogo2 = Text("Castlevania");
  Text jogo3 = Text("Blasphemous");
  Text jogoEscolhido = Text("Jogo escolhido: ", style: TextStyle(fontSize: 30, color: Colors.blue));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text("Escolha seu jogo!", style: TextStyle(color: Colors.white)), backgroundColor: Colors.blue,),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 20),
            Row(mainAxisAlignment: MainAxisAlignment.center, 
              children: [
                SizedBox(width: 100, child: jogo1),  
                SizedBox(width: 250),
                ElevatedButton(
                  onPressed: () => {

                  },
                  child: Text("Escolher")
                )
              ],
            ),
            SizedBox(height: 10),
            Row(mainAxisAlignment: MainAxisAlignment.center, 
              children: [
                SizedBox(width: 100, child: jogo2),  
                SizedBox(width: 250),
                ElevatedButton(
                  onPressed: () => {

                  },
                  child: Text("Escolher")
                )
              ],
            ),
            SizedBox(height: 10),
            Row(mainAxisAlignment: MainAxisAlignment.center, 
              children: [
                SizedBox(width: 100, child: jogo3),  
                SizedBox(width: 250),
                ElevatedButton(
                  onPressed: () => {

                  },
                  child: Text("Escolher")
                )
              ],
            ),
            SizedBox(height: 40),
            jogoEscolhido
          ],
        )
      ),
    );
  }
}