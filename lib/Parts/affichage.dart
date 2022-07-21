// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'login.dart' as globals;

var text=globals.text;

class Affichage extends StatefulWidget {
  const Affichage({Key? key}) : super(key: key);

  @override
  State<Affichage> createState() => _AffichageState();
}

class _AffichageState extends State<Affichage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Affichage des données"),automaticallyImplyLeading: false,backgroundColor: Color.fromARGB(255, 255, 20, 20)),
      body: Center(child: Text("Bienvenue: $text",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18.0,color: Color.fromARGB(255, 0, 167, 11)),))
    );
  }
}