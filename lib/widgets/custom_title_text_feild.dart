import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dash_board/widgets/custom_text_feild.dart';

import '../utils/styles.dart';

class CsutomTitleTextFeild extends StatelessWidget {
  const CsutomTitleTextFeild({super.key, required this.title, required this.hint});
  final String title, hint;
  @override
  Widget build(BuildContext context) {
    return   Column(
      children: [
        Text(
         title,
          style:AppStyles.styleMedium20(context),
        ),
       const SizedBox(height: 12),
        CustomTextFeild(
          hint: hint,
        ),
      ],
    );
  }
}
