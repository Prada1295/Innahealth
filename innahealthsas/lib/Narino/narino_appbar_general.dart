import 'package:flutter/material.dart';
import 'package:innahealthsas/Narino/narino_homebar.dart';
import 'package:innahealthsas/Narino/narino_indicators.dart';
import 'package:innahealthsas/Narino/narino_profile_screen.dart';
import 'package:innahealthsas/Narino/narino_stadistic_screen.dart';

class NarinoNavigationBar extends StatefulWidget {
  const NarinoNavigationBar({Key? key}) : super(key: key);

  @override
  State<NarinoNavigationBar> createState() => _NarinoNavigationBarState();
}

class _NarinoNavigationBarState extends State<NarinoNavigationBar> {
  int _selectedIndex = 0;
  final List<Widget> _tabs = const [
    //ALL THE CATEGORIES FOR EACH USER
    NarinoHomeBar(),
    NarinoStadisticScreen(),
    NarinoIndicatorScreen(),
    NarinoProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _tabs[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w600),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black54,
        backgroundColor: Colors.grey[400],
        //backgroundColor: Colors.orange[50],
        currentIndex: _selectedIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'General',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.trending_up),
            label: 'Estadisticas',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.lightbulb_circle_sharp),
            label: 'Indicadores',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Perfil',
          ),
        ],
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
