import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expenses_item_model.dart';
import 'in_active_item_expenses.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem(
      {super.key, required this.itemModel, required this.isSlect});
  final AllExpensesItemModel itemModel;
  final bool isSlect;
  @override
  Widget build(BuildContext context) {
    return isSlect
        ? ActiveItemExpenses(
            itemModel: itemModel,
          )
        : InActiveItemExpenses(
            itemModel: itemModel,
          );
  }
}
