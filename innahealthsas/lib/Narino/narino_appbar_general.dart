import 'package:flutter/material.dart';
import 'package:innahealthsas/Narino/narino_homebar.dart';
import 'package:innahealthsas/Narino/narino_profile_screen.dart';
import 'package:innahealthsas/Narino/narino_stadistic_screen.dart';

class BaristaNavigationBar extends StatefulWidget {
  const BaristaNavigationBar({Key? key}) : super(key: key);

  @override
  State<BaristaNavigationBar> createState() => _BaristaNavigationBarState();
}

class _BaristaNavigationBarState extends State<BaristaNavigationBar> {
  int _selectedIndex = 0;
  final List<Widget> _tabs = const [
    //ALL THE CATEGORIES FOR EACH USER
    NarinoHomeBar(),
    NarinoStadisticScreen(),
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
        selectedItemColor: Colors.green[800],
        unselectedItemColor: Colors.brown[600],
        backgroundColor: Colors.brown[100],
        //backgroundColor: Colors.orange[50],
        currentIndex: _selectedIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Category',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
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
