// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';

var myAppBar = AppBar(
  backgroundColor: Colors.grey[900],
);

var myDrawer = Drawer(
  backgroundColor: Colors.grey[300],
  // ignore: prefer_const_literals_to_create_immutables
  child: Column(children: [
    const DrawerHeader(child: const Icon(Icons.radio)),
    const ListTile(
      leading: Icon(Icons.phone_android),
      title: Text('C B A P P  M A I N  I N F O'),
    ),
    const ListTile(
      leading: Icon(Icons.home),
      title: Text('D A S H B O A R D'),
    ),
    const ListTile(
      leading: Icon(Icons.settings),
      title: Text('S E T T I N G S'),
    ),
    const ListTile(
      leading: Icon(Icons.save),
      title: Text('S A V E  D A T A'),
    ),
    const ListTile(
      leading: const Icon(Icons.logout),
      title: const Text('L O G O U T'),
    )
  ]),
);

var myDefaultBackground = Colors.grey[300];
