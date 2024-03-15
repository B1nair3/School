// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_local_variable, sort_child_properties_last, curly_braces_in_flow_control_structures
import 'package:flutter/material.dart';

class MyCalculator extends StatefulWidget {
  const MyCalculator({super.key});

  @override
  State<MyCalculator> createState() => _MyCalculatorState();
}

class _MyCalculatorState extends State<MyCalculator> {

  int contador = 0;
  late Text numero = Text("$contador");
  late Text mensagemAleatoria = Text("Então você quer apostar $contador RS", style: TextStyle(fontSize: 20));

  void subtrair() {
    if(contador > 0)
      contador--;
    mensagemAleatoria = Text("Então você quer apostar $contador RS", style: TextStyle(fontSize: 20));
  }
  void somar() {
    contador++;
    mensagemAleatoria = Text("Então você quer apostar $contador RS", style: TextStyle(fontSize: 20));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text("Bem vindo ao Tigrinho da fortuna!", style: TextStyle(color: Colors.white)), backgroundColor: Colors.orange),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 100),
            Image.asset("images/tigrinho.png"),
            SizedBox(height: 20),
            Text("Escolha quanto voce quer apostar!", style: TextStyle(fontSize: 20)),
            SizedBox(height: 30),

            Row(mainAxisAlignment: MainAxisAlignment.center, 
              children: [
                ElevatedButton(
                  onPressed: () => {
                    subtrair(),
                    setState((){})
                  }, 
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    fixedSize: Size(60, 60),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(360)
                    )
                  ),
                  child: Text("-", style: TextStyle(color: Colors.white),)
                ),

                SizedBox(width: 10),
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.orange),
                  child: Center(
                    child: SizedBox(child: Text("$contador", style: TextStyle(color: Colors.white),))
                  )
                ),
                SizedBox(width: 10),

                ElevatedButton(
                  onPressed: () => {
                    somar(),
                    setState((){})
                  }, 
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    fixedSize: Size(60, 60),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(360)
                    )
                  ),
                  child: Text("+", style: TextStyle(color: Colors.white),)
                ),
              ]
            ),
            SizedBox(height: 30),
            mensagemAleatoria
          ]
        ),
      ),
    );
  }
}