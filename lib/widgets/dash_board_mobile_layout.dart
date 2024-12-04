import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/income_section.dart';

import 'all_expenses_and_invoice_section.dart';
import 'my_card_section_&_transaction_section.dart';

class DashBoardMobileLayout extends StatelessWidget {
  const DashBoardMobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          AllExpensesAndInvoiceSection(),
          SizedBox(height: 24),
          MyCardSectionAndTransactionSection(),
          SizedBox(height: 24),
          IncomeSection(),
        ],
      ),
    );
  }
}
