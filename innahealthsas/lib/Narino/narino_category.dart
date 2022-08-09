import 'package:flutter/material.dart';
import 'package:innahealthsas/Categories/indicator_eight_category.dart';
import 'package:innahealthsas/Categories/indicator_five_category.dart';
import 'package:innahealthsas/Categories/indicator_four_category.dart';
import 'package:innahealthsas/Categories/indicator_one_category.dart';
import 'package:innahealthsas/Categories/indicator_seven_category.dart';
import 'package:innahealthsas/Categories/indicator_six_category.dart';
import 'package:innahealthsas/Categories/indicator_three_category.dart';
import 'package:innahealthsas/Categories/indicator_two_category.dart';
import 'package:innahealthsas/widgets/fake_search.dart';

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

class BaristaCategoryScreen extends StatefulWidget {
  const BaristaCategoryScreen({Key? key}) : super(key: key);

  @override
  State<BaristaCategoryScreen> createState() => _BaristaCategoryScreenState();
}

class _BaristaCategoryScreenState extends State<BaristaCategoryScreen> {
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
            IndicatorOneCategory(),
            IndicatorTwoCategory(),
            IndicatorThreeCategory(),
            IndicatorFourCategory(),
            IndicatorFiveCategory(),
            IndicatorSixCategory(),
            IndicatorSevenCategory(),
            IndicatorEightCategory(),
          ]),
    );
  }
}

class ItemsData {
  String label;
  bool isSelected;
  ItemsData({required this.label, this.isSelected = false});
}
