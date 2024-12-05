import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/styles.dart';
import 'all_expenses_item_header.dart';
import '../models/all_expenses_item_model.dart';

class InActiveItemExpenses extends StatelessWidget {
  const InActiveItemExpenses({
    super.key,
    required this.itemModel,
  });

  final AllExpensesItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
            side: const BorderSide(
              width: 1,
              color: Colors.grey,
            ),
            borderRadius: BorderRadius.circular(16)),
      ),
      child: Column(
        children: [
          AllExpensesItemHeader(
            image: itemModel.image,
          ),
          const SizedBox(height: 34),
          Text(
            itemModel.title,
            style: AppStyles.styleBold16(context),
          ),
          Text(
            itemModel.date,
            style: AppStyles.styleRegular14(context),
          ),
          Text(
            itemModel.price,
            style: AppStyles.styleSemiBold24(context),
          ),
        ],
      ),
    );
  }
}

class ActiveItemExpenses extends StatelessWidget {
  const ActiveItemExpenses({
    super.key,
    required this.itemModel,
  });

  final AllExpensesItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      decoration: ShapeDecoration(
        color: Colors.blue,
        shape: RoundedRectangleBorder(
            side: const BorderSide(
              width: 1,
            ),
            borderRadius: BorderRadius.circular(16)),
      ),
      child: Column(
        children: [
          AllExpensesItemHeader(
            color: Colors.blue,
            image: itemModel.image,
          ),
          const SizedBox(height: 34),
          Text(
            itemModel.title,
            style:AppStyles.styleBold16(context),
          ),
          Text(
            itemModel.date,
            style: AppStyles.styleRegular14(context),
          ),
          Text(
            itemModel.price,
            style: AppStyles.styleSemiBold24(context),
          ),
        ],
      ),
    );
  }
}
