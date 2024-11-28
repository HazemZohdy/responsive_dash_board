import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expenses_item.dart';

import 'all_expenses_item_model.dart';

class AllExpensesListViewItem extends StatefulWidget {
  const AllExpensesListViewItem({super.key});

  @override
  State<AllExpensesListViewItem> createState() =>
      _AllExpensesListViewItemState();
}

class _AllExpensesListViewItemState extends State<AllExpensesListViewItem> {
  final item = [
    const  AllExpensesItemModel(
      image: 'assets/images/fire-alarm.png',
      title: 'Income',
      date: 'April 2022',
      price: r'$20,129',
    ),
    const AllExpensesItemModel(
      image: 'assets/images/image.jpg',
      title: 'Balance',
      date: 'April 2022',
      price: r'$20,129',
    ),
   const AllExpensesItemModel(
      image: 'assets/images/fire-alarm.png',
      title: 'Expenses',
      date: 'April 2022',
      price: r'$20,129',
    ),
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: item.asMap().entries.map((e) {
        int index = e.key;
        var item = e.value;
        if (index == 1) {
          return Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: AllExpensesItem(
                  isSlect: selectedIndex == index,
                  itemModel: item,
                ),
              ),
            ),
          );
        } else {
          return Expanded(
            child: GestureDetector(
               onTap: () {
                setState(() {
                  selectedIndex = index;
                });
              },
              child: AllExpensesItem(
                  isSlect: selectedIndex == index, itemModel: item),
            ),
          );
        }
      }).toList(),
      // children: item
      //     .map((e) => Expanded(child: AllExpensesItem(itemModel: e)))
      //     .toList(),
    );
  }
}
