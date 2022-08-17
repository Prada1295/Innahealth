import 'package:flutter/material.dart';
import 'package:innahealthsas/Utils/indicator_list.dart';
import 'package:innahealthsas/widgets/category_widgets.dart';

class IndicatorTwoCategory extends StatelessWidget {
  const IndicatorTwoCategory({Key? key}) : super(key: key);

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
                    headerLabel: 'Sistemas de Información de Salud',
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.64,
                    child: GridView.count(
                      mainAxisSpacing: 40,
                      crossAxisSpacing: 15,
                      crossAxisCount: 2,
                      children: List.generate(indicatortwo.length, (index) {
                        return SubcategoryModel(
                          mainCategoryName: 'indicator 2',
                          subCategoryName: indicatortwo[index],
                          //remember to change images direction
                          //CHANGEEE FAST
                          assetName:
                              'images/indicator_two_images/img$index.png',
                          subCategoryLabel: indicatortwo[index],
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
                maincategoryName: 'Sis. Información de Salud',
              ))
        ],
      ),
    );
  }
}
