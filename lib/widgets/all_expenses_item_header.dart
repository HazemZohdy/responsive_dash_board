// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader({
    super.key,
    required this.image,
    this.color,
  });
  final String image;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 60,
          width: 60,
          decoration:   ShapeDecoration(
            shape:const OvalBorder(),
            color: color ?? Colors.grey,
          ),
          child: Image.asset(image),
        ),
      ],
    );
  }
}
