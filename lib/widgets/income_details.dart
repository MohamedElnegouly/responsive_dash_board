import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/income_detailes_model.dart';
import 'package:responsive_dash_board/widgets/income_item_detailes.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});
  static const items = [
    IncomeDetailesModel(
        color: Color(0XFF208CC8), title: 'Design service', count: '%40'),
    IncomeDetailesModel(
        color: Color(0XFF4EB7F2), title: 'Design product', count: '%25'),
    IncomeDetailesModel(
        color: Color(0XFF064061), title: 'Product royalti', count: '%20'),
    IncomeDetailesModel(color: Color(0XFFE2DECD), title: 'Other', count: '%22'),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children:
          items.map((e) => IncomeItemDetails(incomeDetailesModel: e)).toList(),
    );
    // return ListView.builder(
    //     itemCount: items.length,
    //     shrinkWrap: true,
    //     itemBuilder: (context, index) {
    //       return IncomeItemDetails(
    //         incomeDetailesModel: items[index],
    //       );
    //     });
  }
}
