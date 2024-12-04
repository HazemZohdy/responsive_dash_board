import 'package:flutter/material.dart';
import 'all_expenses_and_invoice_section.dart';
import 'custom_drawer.dart';
import 'income_section.dart';
import 'my_card_section_&_transaction_section.dart';

class DashBoardDiskTopLayout extends StatelessWidget {
  const DashBoardDiskTopLayout({super.key});

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
                      child: AllExpensesAndInvoiceSection(),
                    ),
                    SizedBox(width: 24),
                    Expanded(
                      child: Column(
                        children: [
                          MyCardSectionAndTransactionSection(),
                          Expanded(child: IncomeSection()),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
