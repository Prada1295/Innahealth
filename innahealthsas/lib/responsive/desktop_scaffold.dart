import 'package:flutter/material.dart';
import 'package:innahealthsas/Utils/my_box.dart';
import 'package:innahealthsas/Utils/my_other_box.dart';
import 'package:innahealthsas/Utils/my_tile.dart';
import 'package:innahealthsas/constants.dart';

class DesktopScaffold extends StatefulWidget {
  const DesktopScaffold({Key? key}) : super(key: key);

  @override
  State<DesktopScaffold> createState() => _DesktopScaffoldState();
}

class _DesktopScaffoldState extends State<DesktopScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar,
      backgroundColor: myDefaultBackground,
      body: Row(
        children: [
          //open drawer
          myDrawer,
          //rest of body
          Expanded(
            child: Column(children: [
              // 4 boxes on the top
              AspectRatio(
                aspectRatio: 4,
                child: SizedBox(
                  width: double.infinity,
                  child: GridView.builder(
                      itemCount: 4,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
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
          ),
          Expanded(
            child: Column(children: [
              AspectRatio(
                  aspectRatio: 2,
                  child: SizedBox(
                    width: double.infinity,
                    child: GridView.builder(
                      itemCount: 8,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 4),
                      itemBuilder: (context, index) {
                        return const MyOtherBox();
                      },
                    ),
                  )),
              Expanded(
                child: ListView.builder(
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      return const MyTile();
                    }),
              ),
            ]),
          )
        ],
      ),
    );
  }
}
