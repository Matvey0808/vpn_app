import 'package:flutter/material.dart';
import 'package:food_app1/screens/home_screen.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Center(
        child: Text('Экран настроек', style: TextStyle(fontSize: 24)),
      ),
    );
  }
}
