import 'package:auth_project/configs.dart';
import 'package:flutter/material.dart';

class PrimaryButtonWidget extends StatelessWidget {
  String name;
  VoidCallback onPressed;
  PrimaryButtonWidget({super.key, required this.name, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black,
            padding: const EdgeInsets.symmetric(vertical: defaultPadding)),
        child: Text(name));
  }
}
