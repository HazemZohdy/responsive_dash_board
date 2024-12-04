import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/adaptive_ui_widget.dart';
import 'package:responsive_dash_board/widgets/custom_drawer.dart';
import 'package:responsive_dash_board/widgets/dash_board_disktop_layout.dart';
import 'package:responsive_dash_board/widgets/dash_board_mobile_layout.dart';
import 'package:responsive_dash_board/widgets/dash_board_tablet_layout.dart';

class DashBoardView extends StatefulWidget {
  const DashBoardView({super.key});

  @override
  State<DashBoardView> createState() => _DashBoardViewState();
}

class _DashBoardViewState extends State<DashBoardView> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: MediaQuery.sizeOf(context).width < 800
          ? AppBar(
              leading: IconButton(
                  onPressed: () {
                    scaffoldKey.currentState!.openDrawer();
                  },
                  icon: const Icon(Icons.menu)),
              elevation: 0,
              backgroundColor: Colors.blue,
            )
          : null,
      backgroundColor: const Color(0xFFF7F9FA),
      drawer:
          MediaQuery.sizeOf(context).width < 800 ? const CustomDrawer() : null,
      body: AdaptiveLayout(
        mobileLayout: (context) => const DashBoardMobileLayout(),
        tabletLayout: (context) => const DashBoardTabletLayout(),
        desktopLayout: (context) => const DashBoardDiskTopLayout(),
      ),
    );
  }
}
