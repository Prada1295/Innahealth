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
              height: MediaQuery.of(context).size.height * 0.8,
              width: MediaQuery.of(context).size.width * 0.75,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CategoryHeaderLabel(
                    headerLabel: 'Articulación de Actores',
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.67,
                    child: GridView.count(
                      mainAxisSpacing: 20,
                      crossAxisSpacing: 10,
                      crossAxisCount: 2,
                      children: List.generate(indicatornine.length, (index) {
                        return SubcategoryModel(
                          mainCategoryName: 'indicator 9',
                          subCategoryName: indicatornine[index],
                          //remember to change images direction
                          //CHANGEEEE IMAGES DIRECTION
                          assetName:
                              'images/indicator_nine_images/indicador$index.png',
                          subCategoryLabel: indicatornine[index],
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
                maincategoryName: 'Articulación de Actores',
              ))
        ],
      ),
    );
  }
}
