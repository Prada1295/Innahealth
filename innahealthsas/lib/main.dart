// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:innahealthsas/All_Home_Items/home_items.dart';
import 'package:innahealthsas/Narino/narino_appbar_general.dart';
import 'package:innahealthsas/responsive/mobile_scaffold.dart';

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
      home: BaristaNavigationBar(),
    );
  }
}
