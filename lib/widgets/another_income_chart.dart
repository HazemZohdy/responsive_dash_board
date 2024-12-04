import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class AnotherIncomeChart extends StatefulWidget {
  const AnotherIncomeChart({super.key});

  @override
  State<AnotherIncomeChart> createState() => _AnotherIncomeChartState();
}

class _AnotherIncomeChartState extends State<AnotherIncomeChart> {
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
            showTitle: false,
            radius: activeIndex == 0 ? 30 : 25,
            value: 40,
            color: const Color(
              0xff208CC8,
            ),
          ),
          PieChartSectionData(
            showTitle: false,
            radius: activeIndex == 1 ? 30 : 25,
            value: 25,
            color: const Color(
              0xff4EB7F2,
            ),
          ),
          PieChartSectionData(
            showTitle: false,
            radius: activeIndex == 2 ? 30 : 25,
            value: 20,
            color: const Color(
              0xff064061,
            ),
          ),
          PieChartSectionData(
            showTitle: false,
            radius: activeIndex == 3 ? 30 : 25,
            value: 22,
            color: const Color(
              0xffE2DECD,
            ),
          ),
        ]);
  }
}