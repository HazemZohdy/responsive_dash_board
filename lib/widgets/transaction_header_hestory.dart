import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/styles.dart';

class TransactionHeaderHestory extends StatelessWidget {
  const TransactionHeaderHestory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.only(top: 12, right: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Transaction History',
            style: AppStyles.styleSemiBold20(context)
          ),
            Text(
            'See all',
            style: AppStyles.styleBold16(context),
          ),
        ],
      ),
    );
  }
}
