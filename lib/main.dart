// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'Parts/home.dart';

void main(List<String> args) {
  runApp(ProjectFlutter());
}

class ProjectFlutter extends StatelessWidget {
  const ProjectFlutter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}