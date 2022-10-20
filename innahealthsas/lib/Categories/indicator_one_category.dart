import 'package:flutter/material.dart';
import 'package:innahealthsas/widgets/category_widgets.dart';
import '../Utils/indicator_list.dart';

class IndicatorOneCategory extends StatelessWidget {
  const IndicatorOneCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(),
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.8,
              width: MediaQuery.of(context).size.width * 0.8,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CategoryHeaderLabel(
                    headerLabel: 'Indicadores de Salud',
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.67,
                    child: GridView.count(
                      mainAxisSpacing: 2,
                      crossAxisSpacing: 10,
                      crossAxisCount: 2,
                      children: List.generate(indicatorone.length, (index) {
                        return SubcategoryModel(
                          mainCategoryName: 'indicador uno',
                          subCategoryName: indicatorone[index],
                          //remember to change images direction
                          assetName:
                              'images/indicator_one_images/indicador$index.png',
                          subCategoryLabel: indicatorone[index],
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
