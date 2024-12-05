import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/transaction_item_model.dart';

import '../utils/styles.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({super.key, required this.transactionModel});
  final TransactionModel transactionModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: ListTile(
        title: Text(
          transactionModel.title,
          style: AppStyles.styleMedium20(context),
        ),
        subtitle: Text(
          transactionModel.subtitle,
          style: AppStyles.styleBold16(context),
        ),
        trailing: Text(
          transactionModel.amount,
          style: AppStyles.styleMedium20(context).copyWith(
            color: transactionModel.isDrawal ? Colors.redAccent : Colors.green,
          ),
        ),
      ),
    );
  }
}
