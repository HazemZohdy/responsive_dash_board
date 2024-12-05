import 'package:flutter/material.dart';

import '../utils/styles.dart';
import 'latest_transection_list_view.dart';

class LatestTransaction extends StatelessWidget {
  const LatestTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return   Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Latest Transection',
          style: AppStyles.styleBold16(context),
        ),
        const SizedBox(height: 10),
        const ListViewLatestTransection(),
      ],
    );
  }
}
