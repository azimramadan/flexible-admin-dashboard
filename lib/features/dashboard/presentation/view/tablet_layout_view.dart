import 'package:flexible_dashboard_ui/features/dashboard/presentation/view/widgets/main_content_area.dart';
import 'package:flexible_dashboard_ui/features/dashboard/presentation/view/widgets/side_bar.dart';
import 'package:flutter/material.dart';

class TabletLayoutView extends StatelessWidget {
  const TabletLayoutView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(flex: 1, child: Sidebar()),
        SizedBox(width: 32),
        Expanded(
          flex: 3,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 16.0),
            child: MainContentAreaMobileAndTablet(),
          ),
        ),
        SizedBox(width: 32),
      ],
    );
  }
}
