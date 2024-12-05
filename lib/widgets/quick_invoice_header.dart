import 'package:flutter/material.dart';

import '../utils/styles.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
          Text(
          'Quick Incoice',
          style: AppStyles.styleMedium20(context),
        ),
        const Spacer(),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.add,
              color: Colors.blue,
            )),
      ],
    );
  }
}
