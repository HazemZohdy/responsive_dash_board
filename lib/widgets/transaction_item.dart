import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/transaction_item_model.dart';

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
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.blueAccent,
          ),
        ),
        subtitle: Text(
          transactionModel.subtitle,
          style: const TextStyle(
            fontSize: 16,
            color: Colors.grey,
          ),
        ),
        trailing: Text(
          transactionModel.amount,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ).copyWith(
            color: transactionModel.isDrawal ? Colors.redAccent : Colors.green,
          ),
        ),
      ),
    );
  }
}
