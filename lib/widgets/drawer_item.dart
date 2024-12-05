import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';

import '../utils/styles.dart';

class CustomDrawerItem extends StatelessWidget {
  const CustomDrawerItem(
      {super.key, required this.drawerItemModel, required this.isActive});
  final DrawerItemModel drawerItemModel;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveWidget(drawerItemModel: drawerItemModel,)
        : InActiveWidget(drawerItemModel: drawerItemModel);
  }
}

class InActiveWidget extends StatelessWidget {
  const InActiveWidget({
    super.key,
    required this.drawerItemModel,
  });

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
class ActiveWidget extends StatelessWidget {
  const ActiveWidget({
    super.key,
    required this.drawerItemModel,
  });

  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(drawerItemModel.image),
      title: Text(
        drawerItemModel.title,
        style: AppStyles.styleMedium20(context),
      ),
      trailing: Container(
        width: 3.2,
        decoration: const BoxDecoration(color: Colors.blue),
      ),
    );
  }
}
