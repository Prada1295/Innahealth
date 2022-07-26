import 'package:flutter/material.dart';

class MyOtherBox extends StatelessWidget {
  const MyOtherBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: Colors.purple,
      ),
    );
  }
}
