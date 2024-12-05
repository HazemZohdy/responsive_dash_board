import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/styles.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({super.key});

  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart> {
  int activeIndex = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 1, child: PieChart(getChartData()));
  }

  PieChartData getChartData() {
    return PieChartData(
        pieTouchData: PieTouchData(
          enabled: true,
          touchCallback: (p0, pieTechResponse) {
            activeIndex =
                pieTechResponse?.touchedSection?.touchedSectionIndex ?? -1;
            setState(() {});
          },
        ),
        sectionsSpace: 0,
        sections: [
          PieChartSectionData(
            titleStyle: AppStyles.styleBold16(context),
            radius: activeIndex == 0 ? 40 : 30,
            color: const Color(
              0xff208CC8,
            ),
          ),
          PieChartSectionData(
            titleStyle: AppStyles.styleBold16(context),
            radius: activeIndex == 1 ? 40 : 30,
            color: const Color(
              0xff4EB7F2,
            ),
          ),
          PieChartSectionData(
            titleStyle: AppStyles.styleBold16(context),
            radius: activeIndex == 2 ? 40 : 30,
            color: const Color(
              0xff064061,
            ),
          ),
          PieChartSectionData(
            titleStyle: AppStyles.styleBold16(context),
            radius: activeIndex == 3 ? 40 : 30,
            color: const Color(
              0xffE2DECD,
            ),
          ),
        ]);
  }
}
