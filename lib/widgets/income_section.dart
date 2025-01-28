import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/Custom_background_container.dart';
import 'package:responsive_dash_board/widgets/income_section_header.dart';


class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustyomBackgroundContainer(
        child: Column(
      children: [IncomeSectionHeader()],
    ));
  }
}
