// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_local_variable, avoid_print, prefer_interpolation_to_compose_strings, curly_braces_in_flow_control_structures
import 'package:flutter/material.dart';
import 'package:flutter_application_2asdas/car.dart';

class MyCar extends StatefulWidget {
  const MyCar({super.key});

  @override
  State<MyCar> createState() => _MyCarState();
}

class _MyCarState extends State<MyCar> {
  TextEditingController carController = TextEditingController(), ownerController = TextEditingController();
  String isTunned = "";
  bool motorPower = false, useCarbonPlates = false, renewTire = false, isPriorized = false;
  List<Car> carList = [];
  List<String> changesList = [];

  void cleanForm() {
    motorPower = false;
    useCarbonPlates = false;
    renewTire = false;
    isPriorized = false;
    isTunned = "";
    carController = TextEditingController();
    ownerController = TextEditingController();
    changesList = [];
  }

  void createCarInstance() {
    if (renewTire) {
      changesList.add("Renew Tire");
    }
    else {
      changesList.add("No tire renew");
    }
    if (motorPower) {
      changesList.add("Upgrade Motor Power to 2.0");
    }
    else {
      changesList.add("No motor upgrade");
    }
    if (useCarbonPlates) {
      changesList.add("Use Carbon Plates");
    }
    else {
      changesList.add("No carbon plates");
    }
    carList.add(Car(ownerController.text, carController.text, isTunned, changesList, isPriorized));
    showList();
    cleanForm();
  }

  void showList() {
    print("\nLISTAGEM DE PEDIDOS");
    for (Car c in carList) {
      if (c.isPriorized)
        print("============================================\nOwner: " + c.owner + "\nCar model: " + c.model + "\nWas tunned: " + c.isTunned + "\nChanges:\n" + changesList[0] + "\n" +
          changesList[1] + "\n" + changesList[2] + "\nPriorized: Yes\n============================================\n");
      else
        print("============================================\nOwner: " + c.owner + "\nCar model: " + c.model + "\nWas tunned: " + c.isTunned + "\nChanges:\n" + changesList[0] + "\n" +
          changesList[1] + "\n" + changesList[2] + "\nPriorized: No\n============================================\n");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Welcome to Los Santos Custom!", style: TextStyle(color: Colors.white)), centerTitle: true, backgroundColor: Colors.deepPurple),
      body: SingleChildScrollView( 
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 250, child: Image.asset("images/losSantos.png")),
                TextField(
                  controller: ownerController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                    labelText: "Owner name",
                    prefixIcon: Icon(Icons.person)
                  ),
                ),
                SizedBox(height: 10),
                TextField(
                  controller: carController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                    labelText: "Car model",
                    prefixIcon: Icon(Icons.car_repair)
                  ),
                ),
                SizedBox(height: 40),
                Text("Was your car already tunned?", style: TextStyle(fontSize: 20)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Yes"),
                    Radio(
                      value: "Yes", 
                      groupValue: isTunned, 
                      onChanged: (value) {
                        isTunned = value!;
                        setState(() {});
                      }
                    ),
                    SizedBox(width: 100),
                    Text("No"), 
                    Radio(
                      value: "No", 
                      groupValue: isTunned, 
                      onChanged: (value) {
                        isTunned = value!;
                        setState(() {});
                      },
                    )
                  ],
                ),
                SizedBox(child: Divider()),
                SizedBox(height: 20),
                Text("Select the changes", style: TextStyle(fontSize: 20)),
                CheckboxListTile(
                  title: Text("Motor to 2.0 Horsepower"),
                  subtitle: Text("150\$"),
                  secondary: Icon(Icons.speed),
                  value: motorPower, 
                  onChanged: (value) {
                    motorPower = value!;
                    setState(() {});
                  }
                ),
                CheckboxListTile(
                  title: Text("Use carbon plates"),
                  subtitle: Text("200\$"),
                  secondary: Icon(Icons.speed),
                  value: useCarbonPlates, 
                  onChanged: (value) {
                    useCarbonPlates = value!;
                    setState(() {});
                  }
                ),
                CheckboxListTile(
                  title: Text("Renew tire"),
                  subtitle: Text("25\$"),
                  secondary: Icon(Icons.speed),
                  value: renewTire, 
                  onChanged: (value) {
                    renewTire = value!;
                    setState(() {});
                  }
                ),
                SizedBox(child: Divider()),
                SizedBox(height: 20),
                SwitchListTile(
                  title: Text("Priorize tunning (10\$)"),
                  secondary: Icon(Icons.monetization_on),
                  value: isPriorized, 
                  onChanged: (value) {
                    isPriorized = value;
                    setState(() {});
                  }
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 180,
                      child: FloatingActionButton(
                        onPressed: () => {
                          if((ownerController.text != "") && (carController.text != "") && (isTunned != ""))
                            createCarInstance(),
                          setState((){}),
                        },
                        backgroundColor: Colors.deepPurple,
                        child: Text("Confirmar", style: TextStyle(color: Colors.white)),
                      ),
                    ),
                    SizedBox(width: 20),
                    SizedBox(
                      width: 180,
                      child: FloatingActionButton(
                        onPressed: () => {
                          cleanForm(),
                          setState((){}),
                        },
                        backgroundColor: Colors.deepPurple,
                        child: Text("Cancelar", style: TextStyle(color: Colors.white)),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ),
      )
    );
  }
}