import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_background_container.dart';
import 'package:responsive_dash_board/widgets/queick_invoice_section.dart';

import 'latest_transection.dart';
import 'quick_invoice_header.dart';

class QuickInvove extends StatelessWidget {
  const QuickInvove({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuickInvoiceHeader(),
          LatestTransaction(),
          Divider(
            height: 24,
            thickness: 2,
            color: Colors.grey,
          ),
          CustomQueickIncoiceSection(),
        ],
      ),
    );
  }
}
