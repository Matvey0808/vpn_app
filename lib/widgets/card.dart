import 'package:flutter/material.dart';
import 'package:food_app1/models/model1.dart';

class CardPrimeVPN extends StatelessWidget {
  const CardPrimeVPN({super.key, required this.country});

  final CardVPN country;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 375,
        height: 80,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18),
          ),
          elevation: 3,
          shadowColor: Colors.black,
          color: const Color.fromARGB(255, 247, 247, 247),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Image.asset(country.image),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
