import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_dot_Inducator.dart';
import 'package:responsive_dash_board/widgets/my_card_page_view.dart';

import '../utils/styles.dart';

class MyCardSection extends StatefulWidget {
  const MyCardSection({super.key});

  @override
  State<MyCardSection> createState() => _MyCardSectionState();
}

class _MyCardSectionState extends State<MyCardSection> {
  late PageController pageController;
  int currentPage = 0;
  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      currentPage = pageController.page!.round();
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
          SizedBox(
          width: 420,
          child: Text(
            'MyCard',
            style: AppStyles.styleMedium20(context),
          ),
        ),
        MyCardPageView(
          pageController: pageController,
        ),
        const SizedBox(height: 24),
        CustomDotsIndecator(
          currentPage: currentPage,
        ),
      ],
    );
  }
}
