import 'package:flutter/material.dart';

class CustomWidgetHeader extends StatelessWidget {
  const CustomWidgetHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          'All Expenses',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.blue,
          ),
        ),
        const Expanded(child: SizedBox()),
        Container(
          padding: const EdgeInsets.all(20),
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: Row(
            children: [
              const Text(
                'Monthly',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              const SizedBox(width: 12),
              Transform.rotate(
                angle: -1.571,
                child: const Icon(
                  Icons.arrow_back_ios_new_outlined,
                  size: 20,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
