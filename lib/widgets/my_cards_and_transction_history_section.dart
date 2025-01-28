import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/Custom_background_container.dart';
import 'package:responsive_dash_board/widgets/my_card_section.dart';
import 'package:responsive_dash_board/widgets/transction_history.dart';

class MyCardsAndTransctionHistorySection extends StatelessWidget {
  const MyCardsAndTransctionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustyomBackgroundContainer(
        child: Column(
      children: [
        MyCardSection(),
        Divider(
          color: Color(0XFFF1F1F1),
          height: 40,
        ),
        TransctionHistory(),
      ],
    ));
  }
}
