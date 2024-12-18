import 'package:flutter/material.dart';

import '../utils/styles.dart';

class CustomWidgetHeader extends StatelessWidget {
  const CustomWidgetHeader({super.key, required this.title,});
  final String title;
  
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
          Text(
          title,
          style: AppStyles.styleMedium20(context),
        ),
        const Expanded(child: SizedBox()),
        Container(
          padding: const EdgeInsets.all(20),
          decoration: ShapeDecoration(
            color: Colors.grey,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: Row(
            children: [
                 Text(
                'Monthly',
                style:AppStyles.styleBold16(context),
              ),
              const SizedBox(width: 12),
              Transform.rotate(
                angle: -1.571,
                child: const Icon(
                  Icons.arrow_back_ios_new_outlined,
                  size: 14,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
