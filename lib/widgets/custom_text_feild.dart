import 'package:flutter/material.dart';

class CustomTextFeild extends StatelessWidget {
  const CustomTextFeild({super.key, required this.hint});
  final String hint;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        labelText: hint,
        fillColor: Colors.grey.withOpacity(.22),
        filled: true,
        border: CustomBorder(),
        enabledBorder: CustomBorder(),
        focusedBorder: CustomBorder(),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  OutlineInputBorder CustomBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(
        color: Colors.grey.withOpacity(.22),
      ),
    );
  }
}
