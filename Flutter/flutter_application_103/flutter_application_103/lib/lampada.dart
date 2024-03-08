// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unrelated_type_equality_checks, sort_child_properties_last
import 'package:flutter/material.dart';

class MyLampada extends StatefulWidget {
  const MyLampada({super.key});

  @override
  State<MyLampada> createState() => _MyLampadaState();
}

class _MyLampadaState extends State<MyLampada> {

  Image lampadaAcesa = Image.asset("assets/images/lampada.png");
  Image lampadaApagada = Image.asset("assets/images/lampadaApagada.png");
  late Image lampadaAtual = lampadaApagada;
  void mudaLampada() {
    if(lampadaAtual == lampadaApagada) {
      lampadaAtual = lampadaAcesa;
    }
    else {
      lampadaAtual = lampadaApagada;
    }
  }

  Text textoAceso = Text("Lampada acesa");
  Text textoApagado = Text("Lampada apagada");
  late Text textoAtual = textoApagado;
  void mudaTexto() {
    if(textoAtual == textoApagado) {
      textoAtual = textoAceso;
    }
    else {
      textoAtual = textoApagado;
    }
  }

  Text acender = Text("Acender");
  Text apagar = Text("Apagar");
  late Text oqueFazer = acender;
  void mudaOque() {
    if(oqueFazer == acender) {
      oqueFazer = apagar;
    }
    else {
      oqueFazer = acender;
    }
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            lampadaAtual,
            textoAtual,
            SizedBox(height: 10),

            ElevatedButton(
              onPressed: () => {
                mudaTexto(),
                mudaLampada(),
                mudaOque(),
                setState((){})
              },
              child: oqueFazer
            )
          ],
        )
      ),
    );
  }
}