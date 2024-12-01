import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dash_board/widgets/custom_bottom.dart';

import 'custom_title_text_feild.dart';

class CustomQueickIncoiceSection extends StatelessWidget {
  const CustomQueickIncoiceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
                child:
                    CsutomTitleTextFeild(title: 'Customer name', hint: 'Name')),
            SizedBox(width: 12),
            Expanded(
              child: CsutomTitleTextFeild(
                  title: 'Customer Email', hint: 'Type customer email'),
            ),
          ],
        ),
        SizedBox(
          height: 25,
        ),
        Row(
          children: [
            Expanded(
              child: CustomButttom(
                text: 'Add more Details',
                backgroundColor: Colors.white,
                textColor: Colors.blue,
              ),
            ),
            SizedBox(width: 24),
            Expanded(
              child: CustomButttom(
                text: 'Send Money',
              ),
            ),
          ],
        ),
      ],
    );
  }
}
