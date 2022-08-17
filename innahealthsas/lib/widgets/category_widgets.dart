import 'package:flutter/material.dart';
import 'package:innahealthsas/MinorScreens/subcategory_indicators.dart';

class SliderBar extends StatelessWidget {
  final String maincategoryName;
  const SliderBar({Key? key, required this.maincategoryName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.8,
      width: MediaQuery.of(context).size.width * 0.05,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 60),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.brown.withOpacity(0.2),
              borderRadius: BorderRadius.circular(50)),
          child: RotatedBox(
            quarterTurns: 3,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                maincategoryName == 'Articulación de Actores'
                    ? const Text('')
                    : const Text(' << ', style: style),
                Text(maincategoryName.toUpperCase(), style: style),
                maincategoryName == 'Indicadores de Salud'
                    ? const Text('')
                    : const Text(' >> ', style: style),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

const style = TextStyle(
    color: Colors.brown,
    fontSize: 12,
    fontWeight: FontWeight.w600,
    letterSpacing: 10);

class SubcategoryModel extends StatelessWidget {
  final String mainCategoryName;
  final String subCategoryName;
  final String assetName;
  final String subCategoryLabel;
  const SubcategoryModel(
      {Key? key,
      required this.assetName,
      required this.mainCategoryName,
      required this.subCategoryName,
      required this.subCategoryLabel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => SubCategProducts(
                    maincategName: mainCategoryName,
                    subcategName: subCategoryName,
                  )),
        );
      },
      child: Column(
        children: [
          SizedBox(
            height: 70,
            width: 70,
            child: Image(image: AssetImage(assetName)),
          ),
          Text(
            subCategoryLabel,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}

class CategoryHeaderLabel extends StatelessWidget {
  final String headerLabel;
  const CategoryHeaderLabel({Key? key, required this.headerLabel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Text(
        headerLabel,
        style: const TextStyle(
            fontSize: 22, fontWeight: FontWeight.bold, letterSpacing: 1.5),
        textAlign: TextAlign.center,
      ),
    );
  }
}
