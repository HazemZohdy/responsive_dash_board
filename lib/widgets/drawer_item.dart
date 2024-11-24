import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';

class CustomDrawerItem extends StatelessWidget {
  const CustomDrawerItem({super.key, required this.drawerItemModel});
  final DrawerItemModel drawerItemModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(drawerItemModel.image),
      title: Text(
        drawerItemModel.title,
        style: const TextStyle(
          fontSize: 16,
        ),
      ),
    );
  }
}
