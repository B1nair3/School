// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, curly_braces_in_flow_control_structures, depend_on_referenced_packages, prefer_interpolation_to_compose_strings, prefer_typing_uninitialized_variables
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MyForm extends StatefulWidget {
  const MyForm({super.key});

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  var choose = '';
  var dadosApi = '';
  var info1 = '';
  var info1Text = '';
  var info2 = '';
  var info2Text = '';
  var info3 = '';
  var info3Text = '';
  var info4 = '';
  var info4Text = '';
  var info5 = '';
  var info5Text = '';
  TextEditingController idControl = TextEditingController();

  Future<void> requisition() async
  {
    var url;
    if(idControl.text == '') {
      idError();
      setState(() {});
    } 
    else {
      switch (choose) {
        case 'starships': 
          url = Uri.parse('https://swapi.dev/api/' + choose + '/' + idControl.text);
          http.Response response;
          response = await http.get(url);
          dadosApi = response.body;
          if (response.statusCode == 200) {
            Map<String, dynamic> data = jsonDecode(dadosApi);
            info1 = 'Name: ';
            info2 = 'Model: ';
            info3 = 'Length: ';
            info4 = 'Consumables: ';
            info5 = 'MGLT: ';
            info1Text = (data['name']);
            info2Text = (data['model']);
            info3Text = (data['length']);
            info4Text = (data['consumables']);
            info5Text = (data['MGLT']);
            setState(() {});
          }
          else {
            searchError();
            setState(() {});
          }
        break;

        case 'people':
          var url = Uri.parse('https://swapi.dev/api/' + choose + '/' + idControl.text);
          http.Response response;
          response = await http.get(url);
          dadosApi = response.body;
          if (response.statusCode == 200) {
            Map<String, dynamic> data = jsonDecode(dadosApi);
            info1 = 'Name: ';
            info2 = 'Height: ';
            info3 = 'Hair color: ';
            info4 = 'Skin color: ';
            info5 = 'Gender: ';
            info1Text = (data['name']);
            info2Text = (data['height']);
            info3Text = (data['hair_color']);
            info4Text = (data['skin_color']);
            info5Text = (data['gender']);
            setState(() {});
          }
          else {
            searchError();
            setState(() {});
          }
        break;

        case 'planets':
          var url = Uri.parse('https://swapi.dev/api/' + choose + '/' + idControl.text);
          http.Response response;
          response = await http.get(url);
          dadosApi = response.body;
          if (response.statusCode == 200) {
            Map<String, dynamic> data = jsonDecode(dadosApi);
            info1 = 'Name: ';
            info2 = 'Orbital period: ';
            info3 = 'Rotation period: ';
            info4 = 'Climate: ';
            info5 = 'Terrain: ';
            info1Text = (data['name']);
            info2Text = (data['orbital_period']);
            info3Text = (data['rotation_period']);
            info4Text = (data['climate']);
            info5Text = (data['terrain']);
            setState(() {});
          }
          else {
            searchError();
            setState(() {});
          }
        break;
      }
    }
  }
  void clean() {
    info1 = '';
    info2 = '';
    info3 = '';
    info4 = '';
    info5 = '';
    info1Text = '';
    info2Text = '';
    info3Text = '';
    info4Text = '';
    info5Text = '';
  }
  void catError() {
    clean();
    info1 = 'CATEGORY ERROR';
    info2 = 'No category chosen';
  }
  void searchError() {
    clean();
    info1 = 'SEARCH ERROR';
    info2 = 'Nothing found';
  }
  void idError() {
    clean();
    info1 = 'ID ERROR';
    info2 = 'No ID to search';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Star Wars Tracker'), centerTitle: true, backgroundColor: Colors.yellow,),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Center(
          child: Column(
            children: [
              SizedBox(child: Image.asset("images/vader.png")),
              SizedBox(height: 40),
              Text('What to search: ', style: TextStyle(fontSize: 25, color: Colors.white)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('People', style: TextStyle(color: Colors.white)),
                  Radio(
                    value: 'people', 
                    groupValue: choose, 
                    onChanged: (value) {
                      choose = value.toString();
                      setState(() {});
                    },
                  ),
                  Text('Planets', style: TextStyle(color: Colors.white)),
                  Radio(
                    value: 'planets', 
                    groupValue: choose, 
                    onChanged: (value) {
                      choose = value.toString();
                      setState(() {});
                    },
                  ),
                  Text('Starships', style: TextStyle(color: Colors.white)),
                  Radio(
                    value: 'starships', 
                    groupValue: choose, 
                    onChanged: (value) {
                      choose = value.toString();
                      setState(() {});
                    },
                  )
                ]
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: idControl,
                decoration: InputDecoration(
                  hintText: "ID",
                  prefixIcon: Icon(Icons.numbers), 
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(5))
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                width: 500,
                height: 40,
                child: FloatingActionButton(
                  onPressed: () {
                    requisition();
                  },
                  backgroundColor: Colors.yellow,
                  child: Text("Search", style: TextStyle(color: Colors.black)),
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                height: 150,
                child: DecoratedBox(
                  decoration: BoxDecoration(color: Colors.white), 
                  child: Center(
                    child: Column(
                      children: [
                        Text('Search Results', style: TextStyle(fontSize: 20)),
                        Text(info1 + info1Text),
                        Text(info2 + info2Text),
                        Text(info3 + info3Text),
                        Text(info4 + info4Text),
                        Text(info5 + info5Text),
                      ],
                    ),
                  ),
                ), 
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.black,
    );
  }
}