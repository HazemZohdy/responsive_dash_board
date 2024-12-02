import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_card_dot.dart';

class CustomDotsIndecator extends StatelessWidget {
  const CustomDotsIndecator({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        3,
        (index) => const Padding(
          padding: EdgeInsets.only(right: 6),
          child: CustomCardDot(isActive: false),
        ),
      ),
    );
  }
}
