import 'package:flutter/material.dart';
import '../models/custom_list_tile_model.dart';
import 'custom_list_tile.dart';

class ListViewLatestTransection extends StatelessWidget {
  const ListViewLatestTransection({super.key});
  static const item = [
    CustomListTileModel(
      image: 'assets/images/image.jpg',
      title: 'Madrani Andi',
      subTile: 'Madraniadi20@gmail',
    ),
    CustomListTileModel(
      image: 'assets/images/image.jpg',
      title: 'Madrani Andi',
      subTile: 'Madraniadi20@gmail',
    ),
    CustomListTileModel(
      image: 'assets/images/image.jpg',
      title: 'Madrani Andi',
      subTile: 'Madraniadi20@gmail',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: item
            .map((e) =>
                IntrinsicWidth(child: CustomListTile(customListTileModel: e)))
            .toList(),
      ),
    );
  }
}
