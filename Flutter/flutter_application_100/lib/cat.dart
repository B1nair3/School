import 'package:flutter/material.dart';

class MyCat extends StatelessWidget {
  const MyCat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar (title: Text("Meu gatinho",style: TextStyle(fontSize: 40),),backgroundColor: Color.fromARGB(255, 118, 33, 139),centerTitle: true,),
      body: Center(child: Column(children: [
      Text("Romeu",style: TextStyle(color: Colors.deepPurple,fontSize: 30,backgroundColor: Colors.black,fontStyle: FontStyle.italic)),
      Text("Serena",style:TextStyle(color: Colors.deepPurple,fontSize: 30, backgroundColor: Colors.black,fontStyle: FontStyle.italic) ,),
      Text("George",style: TextStyle(color: Colors.deepPurple,fontSize: 30,backgroundColor: Colors.black,fontStyle: FontStyle.italic),)
      ],)), 
    );
  }
}