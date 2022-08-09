import 'package:flutter/material.dart';
import 'package:innahealthsas/Utils/indicator_list.dart';
import 'package:innahealthsas/widgets/category_widgets.dart';

class MarkFiveCategory extends StatelessWidget {
  const MarkFiveCategory({Key? key}) : super(key: key);

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
                    headerLabel: 'Indicator 5',
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.75,
                    child: GridView.count(
                      mainAxisSpacing: 20,
                      crossAxisSpacing: 15,
                      crossAxisCount: 2,
                      children: List.generate(markfive.length, (index) {
                        return SubcategoryModel(
                          mainCategoryName: 'mark 5',
                          subCategoryName: markfive[index],
                          assetName:
                              'images/indicator_one_images/cup$index.png',
                          subCategoryLabel: markfive[index],
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
