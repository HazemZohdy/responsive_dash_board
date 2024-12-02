import 'package:flutter/material.dart';

class CustomCardDot extends StatelessWidget {
  const CustomCardDot({super.key, required this.isActive});
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      height: 8,
      width: isActive ? 32 : 8,
      decoration: ShapeDecoration(
          color: isActive ? Colors.blue : Colors.grey,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          )),
    );
  }
}
