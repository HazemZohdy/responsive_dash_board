import 'package:flutter/material.dart';

import '../models/imcome_item_model.dart';

class IncomeItem extends StatelessWidget {
  const IncomeItem({super.key, required this.incomeDetailsModel});
  final IncomeDetailsModel incomeDetailsModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        height: 12,
        width: 12,
        decoration: ShapeDecoration(
          color: incomeDetailsModel.color,
          shape: const OvalBorder(),
        ),
      ),
      title: Text(
        incomeDetailsModel.title,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Colors.blueGrey,
        ),
      ),
      trailing: Text(
        incomeDetailsModel.value,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Colors.blue,
        ),
      ),
    );
  }
}
