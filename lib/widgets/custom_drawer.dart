import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/custom_list_tile_model.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';
import 'package:responsive_dash_board/widgets/drawer_item.dart';
import 'custom_list_tile.dart';
import 'list_view_widget.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * .7,
      color: Colors.white,
      child: CustomScrollView(
        slivers:[
          const SliverToBoxAdapter(
            child: CustomListTile(
              customListTileModel: CustomListTileModel(
                image: 'assets/images/image.jpg',
                title: 'Lekan Okeowo',
                subTile: 'demo@gmail.com',
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(height: 8),
          ),
          const LIstViewWidget(),
          const SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(
                    child: SizedBox(
                  height: 20,
                )),
              ],
            ),
          ),
          SliverToBoxAdapter(
              child: Column(
            children: [
              InActiveWidget(
                drawerItemModel: DrawerItemModel(
                    image: 'assets/images/fff.jpg', title: 'Setting'),
              ),
              InActiveWidget(
                drawerItemModel: DrawerItemModel(
                    image: 'assets/images/image.jpg', title: 'Profile'),
              ),
              const SizedBox(height: 40),
            ],
          )),
        ],
      ),
    );
  }
}
