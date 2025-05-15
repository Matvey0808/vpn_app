import 'package:flutter/material.dart';
import 'package:food_app1/screens/home_screen.dart';
import 'package:food_app1/widgets/card.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: MyHomePage());
  }
}
