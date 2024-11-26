import 'package:flutter/material.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader({super.key, required this.image});
 final String image;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 60,
          width: 60,
          decoration: const ShapeDecoration(
            shape: OvalBorder(),
            color: Colors.white,
          ),
          child:Image.asset(image),
        ),
      ],
    );
  }
}
