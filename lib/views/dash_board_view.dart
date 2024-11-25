import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expanses.dart';
import '../widgets/custom_drawer.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Row(
        children: [
          Expanded(child: CustomDrawer()),
          SizedBox(width: 16),
          Expanded(
            flex: 2,
            child: Column(
              children: [
                Expanded(child: AllExpanses()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
