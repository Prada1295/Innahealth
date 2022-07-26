import 'package:flutter/material.dart';

class MyOthertile extends StatelessWidget {
  const MyOthertile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: Colors.purple,
        height: 80,
      ),
    );
  }
}
