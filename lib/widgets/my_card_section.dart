import 'package:flutter/material.dart';

import 'package:responsive_dash_board/widgets/custom_dot_Inducator.dart';
import 'package:responsive_dash_board/widgets/my_card_page_view.dart';

class MyCardSection extends StatelessWidget {
  const MyCardSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 420,
          child: Text(
            'MyCard',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.blueAccent,
            ),
          ),
        ),
        MyCardPageView(),
        SizedBox(height: 20),
        CustomDotsIndecator(),
      ],
    );
  }
}
