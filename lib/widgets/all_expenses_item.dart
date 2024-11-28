import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expenses_item_model.dart';
import 'in_active_item_expenses.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem({super.key, required this.itemModel});
  final AllExpensesItemModel itemModel;
  @override
  Widget build(BuildContext context) {
    return ActiveItemExpenses(
      isSelect: false,
      itemModel: itemModel);
  }
}

