import 'package:flexible_dashboard_ui/features/dashboard/presentation/view/widgets/main_content_area.dart';
import 'package:flutter/material.dart';

class MobileLayoutView extends StatelessWidget {
  const MobileLayoutView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [Expanded(child: MainContentAreaMobileAndTablet())],
    );
  }
}
