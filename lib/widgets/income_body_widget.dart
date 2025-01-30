import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/sized_config.dart';
import 'package:responsive_dash_board/widgets/detailed_income_chart.dart';
import 'package:responsive_dash_board/widgets/income_chart.dart';
import 'package:responsive_dash_board/widgets/income_details.dart';

class incomeBodyWidget extends StatelessWidget {
  const incomeBodyWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return width > SizedConfig.desktop && width < 1750
        ? const Padding(
            padding: EdgeInsets.all(16.0),
            child: DetailedIncomeChart(),
          )
        : const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(child: IncomeChart()),
              Expanded(child: IncomeDetails()),
            ],
          );
  }
}
