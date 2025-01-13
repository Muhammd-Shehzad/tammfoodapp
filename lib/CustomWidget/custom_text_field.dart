import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({
    super.key,
    this.icon, this.hitext, this.labeltext,
  });
  final hitext;
  final labeltext;
  final icon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: hitext,
        labelText: labeltext,
        suffixIcon: icon,
        border: const OutlineInputBorder(),
      ),
    );
  }
}
