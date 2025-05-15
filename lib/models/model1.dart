import 'package:flutter/material.dart';

class CardVPN {
  String name = "";
  String image = "";
  String ip = "";

  CardVPN({required this.name, required this.image, required this.ip});
}

final List<CardVPN> countries = [
  CardVPN(name: "USA", image: "assets/images/Usa.png", ip: "192.0.2.1"),
  CardVPN(name: "Germany", image: "", ip: "203.0.113.2"),
];
