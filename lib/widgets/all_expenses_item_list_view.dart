import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expenses_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/all_expenses_item.dart';

class AllExpensesItemListView extends StatelessWidget {
  const AllExpensesItemListView({super.key});
  static const List<AllExpensesItemModel> items = [
    AllExpensesItemModel(
        title: 'Balance',
        image: Assets.imagesBalance,
        date: 'June 2022',
        price: r'$24,200'),
    AllExpensesItemModel(
        title: 'Expense',
        image: Assets.imagesExpenses,
        date: 'April 2022',
        price: r'$8,440'),
    AllExpensesItemModel(
        title: 'Income',
        image: Assets.imagesIncome,
        date: 'May 2022',
        price: r'$20,129'),
  ];
  @override
  Widget build(BuildContext context) {
    return Row(
      //children: items.map((e) {return Expanded(child: AllExpensesItem(allExpensesItemModel: e));}).toList(),
      children: items.asMap().entries.map((e) {
        var item = e.value;
        int index = e.key;
        if (index == 1) {
          return Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: AllExpensesItem(allExpensesItemModel: item),
            ),
          );
        } else {
          return Expanded(child: AllExpensesItem(allExpensesItemModel: item));
        }
      }).toList(),
    );
  }
}
