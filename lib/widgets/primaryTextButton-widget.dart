import 'package:auth_project/configs.dart';
import 'package:flutter/material.dart';

class PrimaryTextButtonWidget extends StatelessWidget {
  String name;
  VoidCallback onPressed;
  PrimaryTextButtonWidget(
      {super.key, required this.name, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
            primary: Colors.black,
            padding: const EdgeInsets.symmetric(vertical: defaultPadding)),
        child: Text(name));
  }
}
