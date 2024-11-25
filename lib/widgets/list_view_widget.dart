import 'package:flutter/material.dart';
import '../models/drawer_item_model.dart';
import 'drawer_item.dart';

class LIstViewWidget extends StatefulWidget {
  const LIstViewWidget({
    super.key,
  });

  @override
  State<LIstViewWidget> createState() => _LIstViewWidgetState();
}

class _LIstViewWidgetState extends State<LIstViewWidget> {
  final List<DrawerItemModel> item = [
    DrawerItemModel(
        image: 'assets/images/Hisoka_PR_Movie.webp', title: 'Dashboard'),
    DrawerItemModel(
        image: 'assets/images/Hisoka_PR_Movie.webp', title: 'My Transaction'),
    DrawerItemModel(
        image: 'assets/images/Hisoka_PR_Movie.webp', title: 'Statistics'),
    DrawerItemModel(
        image: 'assets/images/Hisoka_PR_Movie.webp', title: 'Wallet Account'),
    DrawerItemModel(
        image: 'assets/images/Hisoka_PR_Movie.webp', title: 'My Investments'),
  ];
  int changeItem = 0;
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
        itemCount:item.length,
        itemBuilder:(context, index) {
          return GestureDetector(
            onTap: (){
              if (changeItem != index) {
                setState(() {
                  changeItem = index;
                });
              }
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: CustomDrawerItem(
                drawerItemModel: item[index],
                isActive: changeItem == index,
              ),
            ),
          );
        },);
  }
}
