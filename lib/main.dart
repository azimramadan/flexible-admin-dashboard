import 'package:flexible_dashboard_ui/core/styles/app_colors.dart';
import 'package:flexible_dashboard_ui/features/dashboard/presentation/view/dashboard_layout_selector.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const FlexibleDashboard());
}

class FlexibleDashboard extends StatelessWidget {
  const FlexibleDashboard({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: AppColors.lightBackground),
      home: const DashboardLayoutSelector(),
    );
  }
}
