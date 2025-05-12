import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flexible_dashboard_ui/features/dashboard/presentation/view/widgets/card_item.dart';
import 'package:flutter/widgets.dart';

class CardsPageView extends StatelessWidget {
  const CardsPageView({super.key, required this.controller});
  final PageController controller;
  @override
  Widget build(BuildContext context) {
    return ExpandablePageView(
      controller: controller,
      scrollDirection: Axis.horizontal,
      children: List.generate(3, (index) => CardItem()),
    );
  }
}
