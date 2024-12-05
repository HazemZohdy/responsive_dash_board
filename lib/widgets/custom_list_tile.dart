import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/custom_list_tile_model.dart';

import '../utils/styles.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key,
    required this.customListTileModel,
  });

  final CustomListTileModel customListTileModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Colors.grey.withOpacity(.28),
      child: Center(
        child: ListTile(
          leading: Image.asset(customListTileModel.image),
          title: Text(
            customListTileModel.title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text(
            customListTileModel.subTile,
            style: AppStyles.styleBold16(context),
          ),
        ),
      ),
    );
  }
}
