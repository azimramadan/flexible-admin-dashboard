import 'package:flexible_dashboard_ui/core/widgets/adaptive_layout.dart';
import 'package:flexible_dashboard_ui/features/dashboard/presentation/view/dashboard_desktop_view.dart';
import 'package:flutter/material.dart';

class DashboardLayoutSelector extends StatelessWidget {
  const DashboardLayoutSelector({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdaptiveLayout(
        mobileLayout: (context) {
          return const Placeholder();
        },
        tabletLayout: (context) {
          return const Placeholder();
        },
        desktopLayout: (context) {
          return const DashboardDesktopView();
        },
      ),
    );
  }
}
