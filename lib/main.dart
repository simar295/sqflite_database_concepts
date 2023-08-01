import 'package:flutter/material.dart';
import 'package:sqflite_database_concepts/mainscreen2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});



  @override
  Widget build(BuildContext context) {

 
    return MaterialApp(home: mainscreen2());
  }
}
