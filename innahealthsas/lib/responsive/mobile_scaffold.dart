import 'package:innahealthsas/All_Board_Indicators.dart/indicator_eight.dart';
import 'package:innahealthsas/All_Board_Indicators.dart/indicator_five.dart';
import 'package:innahealthsas/All_Board_Indicators.dart/indicator_four.dart';
import 'package:innahealthsas/All_Board_Indicators.dart/indicator_one.dart';
import 'package:innahealthsas/All_Board_Indicators.dart/indicator_seven.dart';
import 'package:innahealthsas/All_Board_Indicators.dart/indicator_six.dart';
import 'package:innahealthsas/All_Board_Indicators.dart/indicator_three.dart';
import 'package:innahealthsas/All_Board_Indicators.dart/indicator_two.dart';
import 'package:innahealthsas/All_Home_Items/home_items.dart';
import 'package:innahealthsas/Utils/fake_search.dart';
import 'package:innahealthsas/Utils/my_box.dart';
import 'package:innahealthsas/Utils/my_tile.dart';
import 'package:innahealthsas/constants.dart';
import 'package:flutter/material.dart';

List<ItemsData> items = [
  ItemsData(label: 'mark 1'.toUpperCase()),
  ItemsData(label: 'mark 2'.toUpperCase()),
  ItemsData(label: 'mark 3'.toUpperCase()),
  ItemsData(label: 'mark 4'.toUpperCase()),
  ItemsData(label: 'mark 5'.toUpperCase()),
  ItemsData(label: 'mark 6'.toUpperCase()),
  ItemsData(label: 'mark 7'.toUpperCase()),
  ItemsData(label: 'mark 8'.toUpperCase()),
];

class MobileScaffold extends StatefulWidget {
  const MobileScaffold({Key? key}) : super(key: key);

  @override
  State<MobileScaffold> createState() => _MobileScaffoldState();
}

class _MobileScaffoldState extends State<MobileScaffold> {
  final PageController _pageController = PageController();

  @override
  void initState() {
    for (var element in items) {
      element.isSelected = false;
    }
    setState(() {
      items[0].isSelected = true;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const FakeSearch(),
      ),
      body: Stack(
        children: [
          Positioned(bottom: 0, left: 0, child: sideNavigator(size)),
          Positioned(bottom: 0, right: 0, child: categoryView(size))
        ],
      ), //area where we put all entries in the category
    );
  }

  Widget sideNavigator(Size size) {
    return SizedBox(
        height: size.height * 0.8,
        width: size.width * 0.2,
        child: ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  _pageController.animateToPage(index,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.ease);
                },
                child: Container(
                  color: items[index].isSelected == true
                      ? Colors.brown[100]
                      : Colors.brown.shade300,
                  height: 100,
                  child: Center(
                    child: Text(items[index].label),
                  ),
                ),
              );
            }));
  }

  Widget categoryView(Size size) {
    return Container(
      height: size.height * 0.8,
      width: size.width * 0.8,
      color: Colors.white,
      child: PageView(
          controller: _pageController,
          onPageChanged: (value) {
            for (var element in items) {
              element.isSelected = false;
            }
            setState(() {
              items[value].isSelected = true;
            });
          },
          scrollDirection: Axis.vertical,
          children: const [
            MarkOneCategory(),
            MarkTwoCategory(),
            MarkThreeCategory(),
            MarkFourCategory(),
            MarkFiveCategory(),
            MarkSixCategory(),
            MarkSevenCategory(),
            MarkEightCategory(),
          ]),
    );
  }
}

class ItemsData {
  String label;
  bool isSelected;
  ItemsData({required this.label, this.isSelected = false});
}
