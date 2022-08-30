import 'package:flutter/material.dart';

class HaveAccount extends StatelessWidget {
  final String haveAccount;
  final String actionLabel;
  final Function() onPressed;
  const HaveAccount(
      {Key? key,
      required this.actionLabel,
      required this.haveAccount,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          haveAccount,
          style: const TextStyle(fontStyle: FontStyle.italic, fontSize: 18),
        ),
        TextButton(
            onPressed: onPressed,
            child: Text(
              actionLabel,
              style: const TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ))
      ],
    );
  }
}
