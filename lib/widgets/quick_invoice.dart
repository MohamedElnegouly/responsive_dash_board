import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/Custom_background_container.dart';
import 'package:responsive_dash_board/widgets/Quick_invoice_form.dart';
import 'package:responsive_dash_board/widgets/latest_transction.dart';
import 'package:responsive_dash_board/widgets/quick_invoice_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustyomBackgroundContainer(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuickInvoiceHeader(),
        LatestTransction(),
        Divider(
          height: 48,
          color: Color(0XFFF1F1F1),
        ),
        QuickInvoiceForm(),
      ],
    ));
  }
}
