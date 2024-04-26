// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, curly_braces_in_flow_control_structures, sort_child_properties_last, prefer_interpolation_to_compose_strings, empty_statements

import 'package:asdasdasdasd/user.dart';
import 'package:flutter/material.dart';

class MyForm extends StatefulWidget {
  const MyForm({super.key});

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  GlobalKey<FormState> formKey = GlobalKey();
  TextEditingController userControl = TextEditingController();
  TextEditingController standControl = TextEditingController();
  List<User> userList = [
    User("Andrew", "TheWorld"),
    User("Carrilho", "D4C"),
    User("Matheus", "Cream"),
  ];

  void clearForm() {
    userControl.text = "";
    standControl.text = "";
  }

  Future<void> standLogin() async {
    for(User u in userList) {
      if(u.getUser == userControl.text && u.getStand == standControl.text) {
        clearForm();
        return showDialog<void>(
          context: context,
          barrierDismissible: false,
          builder: (BuildContext context) {
            return AlertDialog(
              contentTextStyle: TextStyle(color: Colors.white),
              titleTextStyle: TextStyle(color: Colors.white, fontSize: 25),
              title: const Text('Login Sucesfull'),
              content: const SingleChildScrollView(
                child: ListBody(
                  children: <Widget>[
                    Text("Welcome back to AJSU!"),
                  ],
                ),
              ),
              backgroundColor: Colors.purple,
              actions: <Widget>[
                TextButton(
                  child: const Text('Okay', style: TextStyle(color: Colors.white)),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          },
        );
      }
    }
    if (userControl.text != "") {
      return showDialog<void>(
          context: context,
          barrierDismissible: false,
          builder: (BuildContext context) {
            return AlertDialog(
              contentTextStyle: TextStyle(color: Colors.white),
              titleTextStyle: TextStyle(color: Colors.white, fontSize: 25),
              title: const Text('Login failed'),
              content: const SingleChildScrollView(
                child: ListBody(
                  children: <Widget>[
                    Text('You\'re not registered on AJSU!'),
                    Text('\nVerify your user and stand name and try again.')
                  ],
                ),
              ),
              backgroundColor: Colors.purple,
              actions: <Widget>[
                TextButton(
                  child: const Text('Okay', style: TextStyle(color: Colors.white)),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          },
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text("Login to AJSU!", style: TextStyle(color: Colors.white, fontSize: 30)), backgroundColor: Colors.purple,),
      body: Center(
        child: Form(
          key: formKey,
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                SizedBox(child: Image.asset("images/theLock.png"), height: 300),
                TextFormField(
                  controller: userControl,
                  decoration: InputDecoration(
                    labelText: "Name",
                    prefixIcon: Icon(Icons.person), 
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(5))),
                  validator: (value) {
                    if (value!.isEmpty) return ("Please, write your name!");
                    else return null;
                  },
                ),
                SizedBox(height: 10),
                TextFormField(
                  controller: standControl,
                  decoration: InputDecoration(
                    labelText: "Stand name",
                    prefixIcon: Icon(Icons.people_alt_outlined), 
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(5))),
                    obscureText: true,
                  validator: (value) {
                    if (value!.isEmpty) return ("Please, write your stand name!");
                    else if (value.length < 3) return ("Your jojo stand cant have just 3 letters!");
                    else return null;
                  },
                ),
                SizedBox(height: 10),
                SizedBox(
                  child: FloatingActionButton(
                    onPressed: () {
                      if (formKey.currentState!.validate())
                        standLogin();
                      setState((){});
                    }, 
                    child: Text("Submit", style: TextStyle(color: Colors.white, fontSize: 20)),
                    backgroundColor: Colors.purple,
                  ), width: 500,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}