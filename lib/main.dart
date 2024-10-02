import 'package:flutter/material.dart';
import 'package:flutter_app/form_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter CRUD',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const   
 FormPage(),
    );
  }
}