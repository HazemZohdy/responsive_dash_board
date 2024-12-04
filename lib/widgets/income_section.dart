import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dash_board/widgets/Custom_widget_header.dart';

import 'income_section.body.dart';
 

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomWidgetHeader(title: 'Income'),
        IncomSectionBody(),
      ],
    );
  }
}

