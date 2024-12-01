import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:responsive_dash_board/widgets/my_card.dart';

class MyCardPageView extends StatelessWidget {
  const MyCardPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ExpandablePageView(
        children: List.generate(
          3,
          (index) => const MyCard(),
        ),
      ),
    );
  }
}
