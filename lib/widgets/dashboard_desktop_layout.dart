import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/All_expenses_and_quick_invoice.dart';
import 'package:responsive_dash_board/widgets/custom_drawer.dart';
import 'package:responsive_dash_board/widgets/income_section.dart';
import 'package:responsive_dash_board/widgets/my_cards_and_transction_history_section.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 32),
        Expanded(
          flex: 3,
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Row(
                  children: [
                    Expanded(
                        flex: 2,
                        child: Padding(
                          padding: EdgeInsets.only(top: 40),
                          child: AllExpensesAndQuickinvoice(),
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          width: 24,
        ),
        Expanded(
            child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            MyCardsAndTransctionHistorySection(),
            SizedBox(
              height: 12,
            ),
            Expanded(child: IncomeSection()),
          ],
        )),
      ],
    );
  }
}
