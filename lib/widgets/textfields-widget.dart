import 'package:auth_project/configs.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class TextFieldWidget extends StatelessWidget {
  String hint;
  EdgeInsets? edgeInsets;
  TextFieldWidget({super.key, required this.hint,this.edgeInsets});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: edgeInsets ??const EdgeInsets.only(top: defaultPadding * 2),
      child: TextFormField(
        decoration:
            InputDecoration(hintText: hint, border: const OutlineInputBorder()),
      ),
    );
    ;
  }
}
