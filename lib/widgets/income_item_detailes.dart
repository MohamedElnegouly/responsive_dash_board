import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/income_detailes_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class IncomeItemDetails extends StatelessWidget {
  const IncomeItemDetails({super.key, required this.incomeDetailesModel});
  final IncomeDetailesModel incomeDetailesModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 12,
        height: 12,
        decoration: ShapeDecoration(
          color: incomeDetailesModel.color,
          shape: const OvalBorder(),
        ),
      ),
      title: Text(
        incomeDetailesModel.title,
        style: AppStyles.styleRegular16,
      ),
      trailing: Text(
        incomeDetailesModel.count,
        style: AppStyles.styleMedium16,
      ),
    );
  }
}
