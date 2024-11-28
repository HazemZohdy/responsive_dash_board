import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/Custom_widget_header.dart';
import 'package:responsive_dash_board/widgets/all_expenses_item_model.dart';

import 'all_expenses_list_view_item.dart';
import 'custom_background_container.dart';

class AllExpanses extends StatelessWidget {
  const AllExpanses({super.key, required this.itemModel});
  final AllExpensesItemModel itemModel;
  @override
  Widget build(BuildContext context) {
    return CustomItemExpanses(itemModel: itemModel);
  }
}

class CustomItemExpanses extends StatelessWidget {
  const CustomItemExpanses({
    super.key,
    required this.itemModel,
  });

  final AllExpensesItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomWidgetHeader(),
          SizedBox(height: 12),
          AllExpensesListViewItem(),
        ],
      ),
    );
  }
}
