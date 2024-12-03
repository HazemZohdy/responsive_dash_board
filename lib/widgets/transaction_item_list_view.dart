import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/transaction_item_model.dart';
import 'package:responsive_dash_board/widgets/transaction_item.dart';

class TransactionItemListView extends StatelessWidget {
  const TransactionItemListView({super.key});

  static const item = [
    TransactionModel(
      title: 'Cash Withdrawal',
      subtitle: '13 Apr, 2022',
      amount: r'$20,129',
      isDrawal: true,
    ),
    TransactionModel(
      title: 'Landing Page project',
      subtitle: '13 Apr, 2022 at 3:30 PM',
      amount: r'$2,000',
      isDrawal: false,
    ),
    TransactionModel(
      title: 'Juni Mobile App project',
      subtitle: '13 Apr, 2022 at 3:30 PM',
      amount: r'$20,129',
      isDrawal: false,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: item.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return TransactionItem(transactionModel: item[index]);
      },
    );
  }
}
