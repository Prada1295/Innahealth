import 'package:flutter/material.dart';
import 'package:innahealthsas/Categories/indicator_eight_category.dart';
import 'package:innahealthsas/Categories/indicator_five_category.dart';
import 'package:innahealthsas/Categories/indicator_four_category.dart';
import 'package:innahealthsas/Categories/indicator_one_category.dart';
import 'package:innahealthsas/Categories/indicator_seven_category.dart';
import 'package:innahealthsas/Categories/indicator_six_category.dart';
import 'package:innahealthsas/Categories/indicator_three_category.dart';
import 'package:innahealthsas/Categories/indicator_two_category.dart';
import 'package:innahealthsas/Categories/indicator_nine_category.dart';
import 'package:innahealthsas/widgets/fake_search.dart';

List<ItemsData> items = [
  ItemsData(label: 'Indicadores de Salud'),
  ItemsData(label: 'Sistemas de Información (S.I)'),
  ItemsData(label: 'Salud Mental'),
  ItemsData(label: 'Comunicación/Educación en Salud'),
  ItemsData(label: 'Vigilancia Epidemiológica'),
  ItemsData(label: 'Gestantes'),
  ItemsData(label: 'Adulto Mayor'),
  ItemsData(label: 'Serivicio de Salud/Talento Humano'),
  ItemsData(label: 'Articulación de Actores'),
];

class NarinoIndicatorScreen extends StatefulWidget {
  const NarinoIndicatorScreen({Key? key}) : super(key: key);

  @override
  State<NarinoIndicatorScreen> createState() => _NarinoIndicatorScreenState();
}

class _NarinoIndicatorScreenState extends State<NarinoIndicatorScreen> {
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
        width: size.width * 0.20,
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
                      ? Colors.grey[100]
                      : Colors.grey.shade300,
                  height: 83,
                  child: Center(
                    child: Text(
                      items[index].label,
                      textAlign: TextAlign.center,
                    ),
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
            IndicatorNineCategory(),
          ]),
    );
  }
}

class ItemsData {
  String label;
  bool isSelected;
  ItemsData({required this.label, this.isSelected = false});
}
