import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expenses_item.dart';

import 'all_expenses_item_model.dart';

class AllExpensesListViewItem extends StatelessWidget {
  const AllExpensesListViewItem({super.key});
  static const item = [
    AllExpensesItemModel(
      image: 'assets/images/fire-alarm.png',
      title: 'Income',
      date: 'April 2022',
      price: r'$20,129',
    ),
    AllExpensesItemModel(
      image: 'assets/images/image.jpg',
      title: 'Balance',
      date: 'April 2022',
      price: r'$20,129',
    ),
    AllExpensesItemModel(
      image: 'assets/images/fire-alarm.png',
      title: 'Expenses',
      date: 'April 2022',
      price: r'$20,129',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Row(
      children: item.asMap().entries.map((e) {
        int index = e.key;
        var item = e.value;
        if (index == 1) {
          return Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: AllExpensesItem(
                itemModel: item,
              ),
            ),
          );
        } else {
          return Expanded(child: AllExpensesItem(itemModel: item));
        }
      }).toList(),
      // children: item
      //     .map((e) => Expanded(child: AllExpensesItem(itemModel: e)))
      //     .toList(),
    );
  }
}
