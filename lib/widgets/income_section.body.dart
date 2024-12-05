import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/another_income_chart.dart';
import 'income_chart.dart';
import 'income_details.dart';

class IncomSectionBody extends StatelessWidget {
  const IncomSectionBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return width >= 1200 && width < 1470
        ? const Expanded(
            child: Padding(
            padding: EdgeInsets.all(16),
            child: AnotherIncomeChart(),
          ))
        : const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(child: IncomeChart()),
              Expanded(flex: 2, child: IncomeDetails()),
            ],
          );
  }
}
