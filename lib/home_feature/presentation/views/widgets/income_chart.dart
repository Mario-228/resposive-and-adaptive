import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({super.key});

  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart> {
  static int touchedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return PieChart(
      PieChartData(
        pieTouchData: PieTouchData(
          enabled: true,
          touchCallback:
              (FlTouchEvent event, PieTouchResponse? pieTouchResponse) =>
                  setState(() {
            touchedIndex =
                pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
          }),
        ),
        sectionsSpace: 0.0,
        sections: [
          PieChartSectionData(
              color: const Color(0xffE2DECD),
              value: 15,
              showTitle: false,
              radius: touchedIndex == 0 ? 30.0 : 25.0),
          PieChartSectionData(
              color: const Color(0xff064061),
              value: 20,
              showTitle: false,
              radius: touchedIndex == 1 ? 30.0 : 25.0),
          PieChartSectionData(
              color: const Color(0xff4EB7F2),
              value: 25,
              showTitle: false,
              radius: touchedIndex == 2 ? 30.0 : 25.0),
          PieChartSectionData(
              color: const Color(0xff208CC8),
              value: 40,
              showTitle: false,
              radius: touchedIndex == 3 ? 30.0 : 25.0),
        ],
      ),
    );
  }
}
