 import 'package:flutter/material.dart';

import '../utils/styles.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        decoration: ShapeDecoration(
          image: const DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage('assets/images/Mask group.png')),
          color: const Color(0xFF4EB7F2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        child:   Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                'Name card',
                style: AppStyles.styleBold16(context),
              ),
              subtitle: Text(
                'Syah Bandi',
                style: AppStyles.styleMedium20(context),
              ),
              trailing: const Image(
                image: AssetImage('assets/images/gallery.png'),
              ),
            ),
            const Expanded(
              child: SizedBox(),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '0918 8124 0042 8129',
                    style: AppStyles.styleSemiBold24(context),
                  ),
                  Text(
                    '12/20 - 124',
                    style: AppStyles.styleSemiBold16(context),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 18,
            ),
          ],
        ),
      ),
    );
  }
}
