import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app1/models/model1.dart';
import 'package:food_app1/widgets/card.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SvgPicture.asset(
          "assets/images/Prime VPN.svg",
          width: 20,
          height: 20,
        ),
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
      ),
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: CardPrimeVPN(country: countries[0]),
            ),
            Center(
              child: SizedBox(
                width: 370,
                height: 370,
                child: Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: SvgPicture.asset("assets/images/world map.svg"),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 230),
                  child: IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      "assets/images/settings.svg",
                      width: 28,
                      height: 28,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 230),
                  child: IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      "assets/images/home.svg",
                      width: 28,
                      height: 28,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 230),
                  child: IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      "assets/images/profile.svg",
                      width: 28,
                      height: 28,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
