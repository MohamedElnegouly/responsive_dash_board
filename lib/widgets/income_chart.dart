import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({super.key});

  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart> {
  int isActive = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(
        pieChartData(),
      ),
    );
  }

  PieChartData pieChartData() {
    return PieChartData(
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (p0, PieTouchResponse) {
          isActive =
              PieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
          setState(() {});
        },
      ),
      sectionsSpace: 0,
      sections: [
        PieChartSectionData(
          showTitle: false,
          radius: isActive == 0 ? 65 : 50,
          value: 40,
          color: const Color(0XFF208CC8),
        ),
        PieChartSectionData(
          showTitle: false,
          radius: isActive == 1 ? 65 : 50,
          value: 25,
          color: const Color(0XFF4EB7F2),
        ),
        PieChartSectionData(
          showTitle: false,
          value: 20,
          radius: isActive == 2 ? 65 : 50,
          color: const Color(0XFF064061),
        ),
        PieChartSectionData(
          showTitle: false,
          value: 22,
          radius: isActive == 3 ? 65 : 50,
          color: const Color(0XFFE2DECD),
        ),
      ],
    );
  }
}
