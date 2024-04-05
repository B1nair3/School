// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, curly_braces_in_flow_control_structures, unnecessary_import
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyStation extends StatefulWidget {
  const MyStation({super.key});

  @override
  State<MyStation> createState() => _MyStationState();
}

class _MyStationState extends State<MyStation> {
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  String worth = "";

  void worthPrice(double precoA, double precoG){
    double media = precoA / precoG;
    if (media >= 0.7) worth = "A melhor escolha é Gasolina";
    else worth = "A melhor escolha é Álcool";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Seven Eleven", style: TextStyle(color: Colors.white)), centerTitle: true, backgroundColor: Color.fromARGB(255, 30, 99, 33)),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 40),
            SizedBox(child: Image.asset("images/7eleven.png"), height: 190,),
            SizedBox(height: 40),
            SizedBox(child: 
              TextField(
                controller: controller1,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.monetization_on),
                  labelText: "Informe o preço do litro do álcool",
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(5))
                )
              ), width: 400,
            ),
            SizedBox(height: 10),
            SizedBox(child: 
              TextField(
                controller: controller2,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.monetization_on),
                  labelText: "Informe o preço do litro da gasolina",
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(5))
                )
              ), width: 400,
            ),
            SizedBox(height: 10),
            SizedBox(child: 
              FloatingActionButton(
                onPressed: () => {
                  if(controller1.text != "" && controller2.text != "")
                    worthPrice(double.parse(controller1.text), double.parse(controller2.text)),
                  setState((){}),
                },
                child: Text("Calcular", style: TextStyle(color: Colors.white)),
                backgroundColor: Color.fromARGB(255, 30, 99, 33),
              ), width: 200,
            ),  
            SizedBox(height: 10),
            Text(worth, style: TextStyle(fontSize: 30)),
          ],
        ),
      ),
    );
  }
}