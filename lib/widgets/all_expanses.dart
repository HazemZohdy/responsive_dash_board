import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/Custom_widget_header.dart';

class AllExpanses extends StatelessWidget {
  const AllExpanses({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: const Column(
        children: [
          CustomWidgetHeader(),
        ],
      ),
    );
  }
}
