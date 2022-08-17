import 'package:flutter/material.dart';
import 'package:innahealthsas/Utils/indicator_list.dart';
import 'package:innahealthsas/widgets/category_widgets.dart';

class IndicatorEightCategory extends StatelessWidget {
  const IndicatorEightCategory({Key? key}) : super(key: key);

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
                    headerLabel: 'Servicios de Salud y Talento Humano',
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.67,
                    child: GridView.count(
                      mainAxisSpacing: 40,
                      crossAxisSpacing: 15,
                      crossAxisCount: 2,
                      children: List.generate(indicatoreight.length, (index) {
                        return SubcategoryModel(
                          mainCategoryName: 'indicator 8',
                          subCategoryName: indicatoreight[index],
                          //remember to change images direction
                          //CHANGEEEE IMAGES DIRECTION
                          assetName:
                              'images/indicator_eight_images/indicador$index.png',
                          subCategoryLabel: indicatoreight[index],
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
                maincategoryName: 'ser. salud / talento humano',
              ))
        ],
      ),
    );
  }
}
