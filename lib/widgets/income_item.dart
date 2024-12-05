import 'package:flutter/material.dart';

import '../models/imcome_item_model.dart';
import '../utils/styles.dart';

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
        style:AppStyles.styleBold16(context),
      ),
      trailing: Text(
        incomeDetailsModel.value,
        style: AppStyles.styleBold16(context),
      ),
    );
  }
}
