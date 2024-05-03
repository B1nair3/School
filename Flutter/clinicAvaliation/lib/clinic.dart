// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, curly_braces_in_flow_control_structures, avoid_print, prefer_interpolation_to_compose_strings

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:projetinho/doctor.dart';

class MyClinic extends StatefulWidget {
  const MyClinic({super.key});

  @override
  State<MyClinic> createState() => _MyClinicState();
}

class _MyClinicState extends State<MyClinic> {
  TextEditingController nameControl = TextEditingController();
  TextEditingController crmControl = TextEditingController();
  bool residence = false, specialization = false, graduation = false, emergency = false;
  List<Doctor> doctorList = [];
  GlobalKey<FormState> formKey = GlobalKey();

  void clearForm() {
    nameControl = TextEditingController();
    crmControl = TextEditingController();
    residence = false;
    specialization = false;
    graduation = false;
    emergency = false;
  }

  void printDoctorsList() {
    print("======== Veterinarios Cadastrados ================");
    for (Doctor d in doctorList) {
      print("\nNome: " + d.name);
      print("CRM: " + d.crm);
      print("Formações:\n" + d.knowledgeList[0] + "\n" + d.knowledgeList[1] + "\n" + d.knowledgeList[2]);
      if(d.emergency) print("Permite chamadas de emergencia: Sim\n");
      else print("Permite chamadas de emergencia: Não\n");
    }
    print("==================================================");
  }

  Future<void> cadasterDoctor() async {
    List<String> knowledgeList = [];

    if (residence == true) knowledgeList.add("Com Residência");
    else knowledgeList.add("Sem Residência");
    if (specialization == true) knowledgeList.add("Com Especialização");
    else knowledgeList.add("Sem Especialização");
    if (graduation == true) knowledgeList.add("Com Graduação");
    else knowledgeList.add("Sem Graduação");

    Doctor doctor = Doctor(nameControl.text, crmControl.text, knowledgeList, emergency);
    doctorList.add(doctor);
    clearForm();
        return showDialog<void>(
          context: context,
          barrierDismissible: false,
          builder: (BuildContext context) {
            return AlertDialog(
              contentTextStyle: TextStyle(color: Colors.white),
              titleTextStyle: TextStyle(color: Colors.white, fontSize: 25),
              title: const Text('Cadastro com sucesso!'),
              backgroundColor: Colors.green,
              actions: <Widget>[
                TextButton(
                  child: const Text('Okay', style: TextStyle(color: Colors.white)),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          }
        );
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Clinica veterinaria AnimalCare", style: TextStyle(color: Colors.white, fontSize: 30)), backgroundColor: Colors.green, centerTitle: true,),
      body: SingleChildScrollView(
        child: Center(
          child: Form(
            key: formKey,
            child: Padding(
              padding: EdgeInsets.all(20),
                child: Column(
                children: [
                  Text("Cadastro de veterinário", style: TextStyle(fontSize: 40)),
                  SizedBox(child: Image.asset("images/clinicLogo.png"), height: 300),
                  TextFormField(
                    controller: nameControl,
                    decoration: InputDecoration(
                      labelText: "Name",
                      prefixIcon: Icon(Icons.person), 
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(5))),
                    validator: (value) {
                      if (value!.isEmpty) return ("Porfavor, escreva seu nome!");
                        else return null;
                    },
                  ),
                  SizedBox(height: 10),
                  TextFormField(
                    controller: crmControl,
                    decoration: InputDecoration(
                      labelText: "CRM",
                      prefixIcon: Icon(Icons.numbers), 
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(5))),
                    validator: (value) {
                      if (value!.isEmpty) return ("Porfavor, informe sua CRM!");
                        else return null;
                    },
                  ),
                  SizedBox(height: 20),
                  Divider(),
                  SizedBox(height: 20),
                  Text("Formação:", style: TextStyle(fontSize: 20)),
                  CheckboxListTile(
                    title: Text("Residência"),
                    secondary: Icon(Icons.lightbulb),
                    value: residence, 
                    onChanged: (value) {
                      residence = value!;
                      setState(() {});
                    }
                  ),
                  CheckboxListTile(
                    title: Text("Especialização"),
                    secondary: Icon(Icons.lightbulb_rounded),
                    value: specialization, 
                    onChanged: (value) {
                      specialization = value!;
                      setState(() {});
                    }
                  ),
                  CheckboxListTile(
                    title: Text("Pós-Graduação"),
                    secondary: Icon(Icons.light_mode),
                    value: graduation, 
                    onChanged: (value) {
                      graduation = value!;
                      setState(() {});
                    }
                  ),
                  SizedBox(height: 20),
                  Divider(),
                  SizedBox(height: 20),
                  SwitchListTile(
                    title: Text("Permitir chamadas de emergência?"),
                    secondary: Icon(Icons.phone),
                    value: emergency, 
                    onChanged: (value) {
                      emergency = value;
                      setState(() {});
                    }
                  ),
                  SizedBox(height: 20),
                  Divider(),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        child: FloatingActionButton(
                          onPressed: () {
                            if (formKey.currentState!.validate())
                              cadasterDoctor();
                            printDoctorsList();
                            setState((){});
                          }, 
                          child: Text("Cadastrar", style: TextStyle(color: Colors.white, fontSize: 20)),
                          backgroundColor: Colors.green,
                        ), width: 200,
                      ),
                      SizedBox(
                        child: FloatingActionButton(
                          onPressed: () {
                            if (formKey.currentState!.validate())
                              clearForm();
                            setState((){});
                          }, 
                          child: Text("Cancelar", style: TextStyle(color: Colors.white, fontSize: 20)),
                          backgroundColor: Colors.green,
                        ), width: 200,
                      )
                    ],
                  )
                ],
              ),
            )
          )
        ),
      )
    );
  }
}