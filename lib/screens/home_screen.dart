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
  int _currentIndex = 0;
  final List<Widget> _screens = [
    _buildHomeScreen(),
    _buildProfileScreen(),
    _buildSettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _currentIndex == 0 ? _buildAppBar() : null,
      body: _screens[_currentIndex],
      bottomNavigationBar: _buildBottomNavBar(),
    );
  }

  // AppBar только для главного экрана
  AppBar _buildAppBar() {
    return AppBar(
      title: SvgPicture.asset(
        "assets/images/Prime VPN.svg",
        width: 20,
        height: 20,
      ),
    );
  }

  // Главный экран
  static Widget _buildHomeScreen() {
    return SafeArea(
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
        ],
      ),
    );
  }

  // Экран профиля
  static Widget _buildProfileScreen() {
    return const SafeArea(
      child: Center(
        child: Text('Экран профиля', style: TextStyle(fontSize: 24)),
      ),
    );
  }

  // Экран настроек
  static Widget _buildSettingsScreen() {
    return const SafeArea(
      child: Center(
        child: Text('Экран настроек', style: TextStyle(fontSize: 24)),
      ),
    );
  }

  // Навигационная панель
  Widget _buildBottomNavBar() {
    return SizedBox(
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildNavButton(
            iconPath: "assets/images/profile.svg",
            isActive: _currentIndex == 1,
            onPressed: () => setState(() => _currentIndex = 1),
          ),
          _buildNavButton(
            iconPath: "assets/images/home.svg",
            isActive: _currentIndex == 0,
            onPressed: () => setState(() => _currentIndex = 0),
          ),
          _buildNavButton(
            iconPath: "assets/images/settings.svg",
            isActive: _currentIndex == 2,
            onPressed: () => setState(() => _currentIndex = 2),
          ),
        ],
      ),
    );
  }

  // Кнопка навигации
  Widget _buildNavButton({
    required String iconPath,
    required bool isActive,
    required VoidCallback onPressed,
  }) {
    return GestureDetector(
      onTap: onPressed,
      child: AnimatedScale(
        duration: Duration(milliseconds: 200),
        scale: isActive ? 1.2 : 1.0,
        child: SvgPicture.asset(
          iconPath,
          width: 28,
          height: 28,
          color: isActive ? Colors.purple[500] : Colors.blueGrey,
        ),
      ),
    );
  }
}
