import 'package:flutter/material.dart';
import '../widgets/all_expenses_and_invoice_section.dart';
import '../widgets/custom_drawer.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Row(
        children: [
          Expanded(child: CustomDrawer()),
          SizedBox(width: 32),
          Expanded(
            flex: 2,
            child: AllExpensesAndInvoiceSection(),
          ),
        ],
      ),
    );
  }
}
