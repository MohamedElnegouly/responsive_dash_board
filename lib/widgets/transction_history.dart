import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widgets/transction_history_list_view.dart';

class TransctionHistory extends StatelessWidget {
  const TransctionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Transaction History',
              style: AppStyles.styleSemiBold20
                  .copyWith(color: const Color(0XFF064061)),
            ),
            Text(
              'See all',
              style: AppStyles.styleMedium16
                  .copyWith(color: const Color(0XFF4EB7F2)),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        const Text(
          '13 April 2022',
          style: AppStyles.styleMedium16,
        ),
        TransctionHistoryListView(),
      ],
    );
  }
}
