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
            titlePositionPercentageOffset: activeIndex == 0 ? 1.4 : null,
            title: activeIndex == 0 ? 'Design Service' : '40%',
            titleStyle:
                TextStyle(color: activeIndex == 0 ? null : Colors.white),
            radius: activeIndex == 0 ? 50 : 60,
            value: 40,
            color: const Color(
              0xff208CC8,
            ),
          ),
          PieChartSectionData(
            titlePositionPercentageOffset: activeIndex == 1 ? 1.4 : null,
            title: activeIndex == 1 ? 'Design Service' : '40%',
            titleStyle:
                TextStyle(color: activeIndex == 1 ? null : Colors.white),
            radius: activeIndex == 1 ? 50 : 60,
            value: 25,
            color: const Color(
              0xff4EB7F2,
            ),
          ),
          PieChartSectionData(
            titlePositionPercentageOffset: activeIndex == 2 ? 1.4 : null,
            title: activeIndex == 2 ? 'Design Service' : '40%',
            titleStyle:
                TextStyle(color: activeIndex == 2 ? null : Colors.white),
            radius: activeIndex == 2 ? 50 : 60,
            value: 20,
            color: const Color(
              0xff064061,
            ),
          ),
          PieChartSectionData(
            titlePositionPercentageOffset: activeIndex == 3 ? 1.1 : null,
            title: activeIndex == 3 ? 'Design Service' : '40%',
            titleStyle:
                TextStyle(color: activeIndex == 3 ? null : Colors.white),
            radius: activeIndex == 3 ? 50 : 60,
            value: 22,
            color: const Color(
              0xffE2DECD,
            ),
          ),
        ]);
  }
}
