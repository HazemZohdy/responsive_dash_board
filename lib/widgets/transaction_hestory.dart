import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/transaction_item_list_view.dart';

import 'transaction_header_hestory.dart';

class TransactionHestory extends StatelessWidget {
  const TransactionHestory({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TransactionHeaderHestory(),
        SizedBox(
          height: 18,
        ),
        Text(
          '13 April 2022',
          style: TextStyle(
            fontSize: 18,
            color: Colors.grey,
          ),
        ),
        TransactionItemListView(),
      ],
    );
  }
}
