import 'dart:developer';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class DetailedIncomeChart extends StatefulWidget {
  const DetailedIncomeChart({super.key});

  @override
  State<DetailedIncomeChart> createState() => _DetailedIncomeChartState();
}

class _DetailedIncomeChartState extends State<DetailedIncomeChart> {
  int isActive = -1;
  @override
  Widget build(BuildContext context) {
   // log(MediaQuery.sizeOf(context).width.toString());
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
          titleStyle: AppStyles.styleSemiBold20
              .copyWith(color: isActive == 0 ? null : Colors.white),
          titlePositionPercentageOffset: isActive == 0 ? 1.5 : null,
          radius: isActive == 0 ? 65 : 50,
          title: isActive == 0 ? 'Design service' : '40%',
          value: 40,
          color: const Color(0XFF208CC8),
        ),
        PieChartSectionData(
          titleStyle: AppStyles.styleSemiBold20
              .copyWith(color: isActive == 1 ? null : Colors.white),
          radius: isActive == 1 ? 65 : 50,
          titlePositionPercentageOffset: isActive == 1 ? 2.4 : null,
          title: isActive == 1 ? 'Design product' : '25%',
          value: 25,
          color: const Color(0XFF4EB7F2),
        ),
        PieChartSectionData(
          titleStyle: AppStyles.styleSemiBold20
              .copyWith(color: isActive == 2 ? null : Colors.white),
          title: isActive == 2 ? 'Product royalti' : '20%',
          titlePositionPercentageOffset: isActive == 2 ? 1.4 : null,
          value: 20,
          radius: isActive == 2 ? 65 : 50,
          color: const Color(0XFF064061),
        ),
        PieChartSectionData(
          titleStyle: AppStyles.styleSemiBold20
              .copyWith(color: isActive == 3 ? null : Colors.white),
          title: isActive == 3 ? 'Other' : '22%',
          titlePositionPercentageOffset: isActive == 3 ? 1.5 : null,
          value: 22,
          radius: isActive == 3 ? 65 : 50,
          color: const Color(0XFFE2DECD),
        ),
      ],
    );
  }
}
