import 'package:flutter/material.dart';
import 'package:innahealthsas/widgets/category_widgets.dart';

import '../Utils/indicator_list.dart';

class IndicatorOneCategory extends StatelessWidget {
  const IndicatorOneCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.8,
              width: MediaQuery.of(context).size.width * 0.75,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CategoryHeaderLabel(
                    headerLabel: 'mark 8',
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.68,
                    child: GridView.count(
                      mainAxisSpacing: 40,
                      crossAxisSpacing: 15,
                      crossAxisCount: 2,
                      children: List.generate(indicatorone.length, (index) {
                        return SubcategoryModel(
                          mainCategoryName: 'indicator 1',
                          subCategoryName: indicatorone[index],
                          //remember to change images direction
                          assetName:
                              'images/indicator_one_images/cup$index.png',
                          subCategoryLabel: indicatorone[index],
                        );
                      }),
                    ),
                  )
                ],
              ),
            ),
          ),
          const Positioned(
              bottom: 0,
              right: 0,
              child: SliderBar(
                maincategoryName: 'indicator 8',
              ))
        ],
      ),
    );
  }
}
