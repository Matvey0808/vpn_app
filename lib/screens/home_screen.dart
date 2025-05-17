import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app1/models/model1.dart';
import 'package:food_app1/widgets/card.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int isActive = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SvgPicture.asset(
          "assets/images/Prime VPN.svg",
          width: 20,
          height: 20,
        ),
      ),
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
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onPressed: () {
                      setState(() {
                        isActive = 3;
                      });
                    },
                    icon: SvgPicture.asset(
                      "assets/images/settings.svg",
                      width: 28,
                      height: 28,
                      color:
                          isActive == 3 ? Colors.purple[500] : Colors.blueGrey,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 230),
                  child: IconButton(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onPressed: () {
                      setState(() {
                        isActive = 1;
                      });
                    },
                    icon: SvgPicture.asset(
                      "assets/images/home.svg",
                      color:
                          isActive == 1 ? Colors.purple[500] : Colors.blueGrey,
                      width: 28,
                      height: 28,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 230),
                  child: IconButton(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onPressed: () {
                      setState(() {
                        isActive = 2;
                      });
                    },
                    icon: SvgPicture.asset(
                      "assets/images/profile.svg",
                      color:
                          isActive == 2 ? Colors.purple[500] : Colors.blueGrey,
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
