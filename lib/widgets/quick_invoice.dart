import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/Custom_background_container.dart';
import 'package:responsive_dash_board/widgets/custom_text_field.dart';
import 'package:responsive_dash_board/widgets/latest_transction.dart';
import 'package:responsive_dash_board/widgets/quick_invoice_header.dart';
import 'package:responsive_dash_board/widgets/title_text_field.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustyomBackgroundContainer(
        child: Column(
      children: [
        QuickInvoiceHeader(),
        LatestTransction(),
        Divider(
          height: 48,
        ),
        TitleTextField(title: 'Customer name', hint: 'Type Customer name')
      ],
    ));
  }
}
