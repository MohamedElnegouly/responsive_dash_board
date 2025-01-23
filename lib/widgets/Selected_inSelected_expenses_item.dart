import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expenses_item_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widgets/all_expenses_item_header.dart';

class UnSelectedExpensesItem extends StatelessWidget {
  const UnSelectedExpensesItem({
    super.key,
    required this.allExpensesItemModel,
  });

  final AllExpensesItemModel allExpensesItemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(
            width: 1,
            color: Color(0xFFF1F1F1),
          ),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            image: allExpensesItemModel.image,
          ),
          const SizedBox(height: 34),
          Text(allExpensesItemModel.title, style: AppStyles.styleBold16),
          const SizedBox(height: 8),
          Text(allExpensesItemModel.date, style: AppStyles.styleRegular14),
          const SizedBox(height: 16),
          Text(allExpensesItemModel.price, style: AppStyles.styleSemiBold24),
        ],
      ),
    );
  }
}

class SelectedExpensesItem extends StatelessWidget {
  const SelectedExpensesItem({
    super.key,
    required this.allExpensesItemModel,
  });

  final AllExpensesItemModel allExpensesItemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: const Color(0XFF4EB7F2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            imageBackground:
            Colors.white.withValues(alpha: 0.100000000149011612),
            imageColor: Colors.white,
            image: allExpensesItemModel.image,
          ),
          const SizedBox(height: 34),
          Text(allExpensesItemModel.title,
              style: AppStyles.styleBold16.copyWith(color: Colors.white)),
          const SizedBox(height: 8),
          Text(allExpensesItemModel.date,
              style: AppStyles.styleRegular14.copyWith(color: Colors.white60)),
          const SizedBox(height: 16),
          Text(allExpensesItemModel.price,
              style: AppStyles.styleSemiBold24.copyWith(color: Colors.white)),
        ],
      ),
    );
  }
}
