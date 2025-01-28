import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/transction_history.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class TransctionItem extends StatelessWidget {
  const TransctionItem({super.key, required this.transctionHistory});
  final TransctionHistory transctionHistory;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0XFFFAFAFA),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        title: Text(
          transctionHistory.title,
          style: AppStyles.styleSemiBold16,
        ),
        subtitle: Text(
          transctionHistory.date,
          style:
              AppStyles.styleRegular16.copyWith(color: const Color(0XFFAAAAAA)),
        ),
        trailing: Text(
          transctionHistory.amount,
          style: AppStyles.styleSemiBold20.copyWith(
            color: transctionHistory.isWithdrawal
                ? const Color(0XFFF3735E)
                : const Color(0XFF7DD97B),
          ),
        ),
      ),
    );
  }
}
