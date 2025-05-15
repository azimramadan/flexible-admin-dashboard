import 'package:flexible_dashboard_ui/core/constants/styles/app_text_styles.dart';
import 'package:flexible_dashboard_ui/features/dashboard/presentation/view/widgets/cards_page_view.dart';
import 'package:flexible_dashboard_ui/features/dashboard/presentation/view/widgets/dots_indicator.dart';
import 'package:flutter/widgets.dart';

class MyCardSection extends StatefulWidget {
  const MyCardSection({super.key});

  @override
  State<MyCardSection> createState() => _MyCardSectionState();
}

class _MyCardSectionState extends State<MyCardSection> {
  late PageController pageController;
  int currentPageIndex = 0;
  @override
  void initState() {
    super.initState();
    pageController = PageController();
    pageController.addListener(() {
      currentPageIndex = pageController.page!.round();
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('My card', style: AppTextStyles.montserratSemiBold20(context)),
        SizedBox(height: 20),
        CardsPageView(controller: pageController),
        SizedBox(height: 19),
        DotsIndicator(currentPageIndex: currentPageIndex),
      ],
    );
  }
}
