import 'package:flutter/material.dart';
import 'package:innahealthsas/Utils/indicator_list.dart';
import 'package:innahealthsas/widgets/category_widgets.dart';

class IndicatorNineCategory extends StatelessWidget {
  const IndicatorNineCategory({Key? key}) : super(key: key);

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
              height: MediaQuery.of(context).size.height * 0.9,
              width: MediaQuery.of(context).size.width * 0.7,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CategoryHeaderLabel(
                    headerLabel: 'Indicator 9',
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.75,
                    child: GridView.count(
                      mainAxisSpacing: 20,
                      crossAxisSpacing: 15,
                      crossAxisCount: 2,
                      children: List.generate(indicatornine.length, (index) {
                        return SubcategoryModel(
                          mainCategoryName: 'mark 9',
                          subCategoryName: indicatornine[index],
                          assetName:
                              'images/indicator_one_images/indicador$index.png',
                          subCategoryLabel: indicatornine[index],
                        );
                      }),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
