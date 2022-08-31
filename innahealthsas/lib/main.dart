// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:innahealthsas/All_Logins/narino_login.dart';
import 'package:innahealthsas/Narino/narino_appbar_general.dart';
import 'package:innahealthsas/Narino/narino_homebar.dart';
import 'package:innahealthsas/Narino/narino_profile_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: NarinoLogin(),
      initialRoute: '/narino_login',
      routes: {
        '/narino_login': (context) => NarinoLogin(),
        '/narino_appbar_general': (context) => NarinoNavigationBar(),
        '/narino_homebar': (context) => NarinoHomeBar(),
        '/narino_profile_screen': (context) => NarinoProfileScreen(),
      },
    );
  }
}
