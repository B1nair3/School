// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:steam/hackSlash.dart';
import 'package:steam/metroid.dart';
import 'package:steam/rogue.dart';
import 'package:steam/steam.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
        '/': (context) => MySteam(),
        '/metroidvania': (context) => MyMetroidvania([]),
        '/rogueLike': (context) => MyRogueLike([]),
        '/hackAndSlash': (context) => MyHackAndSlash([]),
      },
    );
  }
}