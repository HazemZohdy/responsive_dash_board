import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_background_container.dart';
import 'package:responsive_dash_board/widgets/my_card_section.dart';
import 'package:responsive_dash_board/widgets/transaction_hestory.dart';

class MyCardSectionAndTransactionSection extends StatelessWidget {
  const MyCardSectionAndTransactionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [
          MyCardSection(),
          Divider(
            color: Colors.blueAccent,
            height: 20,
          ),
          TransactionHestory(),
        ],
      ),
    );
  }
}
