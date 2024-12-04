import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/imcome_item_model.dart';
import 'package:responsive_dash_board/widgets/income_item.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});

  static const item = [
    IncomeDetailsModel(
      color: Color(0xff208CC8),
      title: 'Design service',
      value: r'40%',
    ),
    IncomeDetailsModel(
      color: Color(0xff4EB7F2),
      title: 'Design product',
      value: r'25%',
    ),
    IncomeDetailsModel(
      color: Color(0xff064061),
      title: 'Product royalti',
      value: r'20%',
    ),
    IncomeDetailsModel(
      color: Color(0xffE2DECD),
      title: 'other',
      value: r'22%',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    log(MediaQuery.sizeOf(context).width.toString());
    return Column(
      children: item.map((e) => IncomeItem(incomeDetailsModel: e)).toList(),
    );
    return ListView.builder(
        itemCount: item.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return IncomeItem(incomeDetailsModel: item[index]);
        });
  }
}
