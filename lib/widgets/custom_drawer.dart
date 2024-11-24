import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/drawer_item.dart';

import '../models/drawer_item_model.dart';
import 'custom_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});
  static const List<DrawerItemModel> item = [
    DrawerItemModel(image: 'assets/images/Hisoka_PR_Movie.webp', title: 'Dashboard'),
    DrawerItemModel(
        image: 'assets/images/Hisoka_PR_Movie.webp', title: 'My Transaction'),
    DrawerItemModel(image: 'assets/images/Hisoka_PR_Movie.webp', title: 'Statistics'),
    DrawerItemModel(image: 'assets/images/Hisoka_PR_Movie.webp', title: 'Wallet Account'),
    DrawerItemModel(
        image: 'assets/images/Hisoka_PR_Movie.webp', title: 'My Investments'),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          const CustomListTile(
            image: 'assets/images/image.jpg',
            title: 'Lekan Okeowo',
            subTitle: 'demo@gmail.com',
          ),
          const SizedBox(height: 8),
          ListView.builder(
              itemCount: item.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: CustomDrawerItem(drawerItemModel: item[index]),
                );
              })
        ],
      ),
    );
  }
}
