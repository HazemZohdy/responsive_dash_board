import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/quick_invove.dart';
import 'all_expanses.dart';
import '../models/all_expenses_item_model.dart';

class AllExpensesAndInvoiceSection extends StatelessWidget {
  const AllExpensesAndInvoiceSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        AllExpanses(
          itemModel: AllExpensesItemModel(
            image: 'assets/images/image.jpg',
            title: 'Imcome',
            date: 'April 2022',
            price: r'$20,129',
          ),
        ),
        SizedBox(height: 12),
        QuickInvove(),
      ],
    );
  }
}
