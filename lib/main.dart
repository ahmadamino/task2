import 'package:flutter/material.dart';
import 'package:task2/add.dart';
import 'package:task2/home_page.dart';

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
      home:HomePage(),
      routes: {
        'add':(context)=> Add(),
        'home':(context)=>HomePage(),
      },
    );
  }
}
