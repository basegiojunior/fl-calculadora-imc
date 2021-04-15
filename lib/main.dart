import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculadora de IMC"),
        centerTitle: true,
        backgroundColor: Colors.deepPurpleAccent,
        actions: [IconButton(icon: Icon(Icons.refresh), onPressed: () {})],
      ),
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Icon(Icons.person_outline, size: 120, color: Colors.deepPurpleAccent),
          TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: "Peso (kg)",
                  labelStyle: TextStyle(color: Colors.deepPurpleAccent)),
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.deepPurpleAccent, fontSize: 25)),
          TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: "Altura (cm)",
                  labelStyle: TextStyle(color: Colors.deepPurpleAccent)),
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.deepPurpleAccent, fontSize: 25))
        ],
      ),
    );
  }
}
