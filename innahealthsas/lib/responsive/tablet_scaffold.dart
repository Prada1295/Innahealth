import 'package:flutter/material.dart';
import 'package:innahealthsas/constants.dart';
import 'package:innahealthsas/util/my_box.dart';
import 'package:innahealthsas/util/my_tile.dart';

class TabletScaffold extends StatefulWidget {
  const TabletScaffold({Key? key}) : super(key: key);

  @override
  State<TabletScaffold> createState() => _TabletScaffoldState();
}

class _TabletScaffoldState extends State<TabletScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar,
      backgroundColor: myDefaultBackground,
      drawer: myDrawer,
      body: Column(children: [
        // 4 boxes on the top
        AspectRatio(
          aspectRatio: 4,
          child: SizedBox(
            width: double.infinity,
            child: GridView.builder(
                itemCount: 4,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4),
                itemBuilder: (context, index) {
                  return const MyBox();
                }),
          ),
        ),
        // tiles below it
        Expanded(
          child: ListView.builder(
              itemCount: 6,
              itemBuilder: (context, index) {
                return const MyTile();
              }),
        )
      ]),
    );
  }
}
