import 'package:flexible_dashboard_ui/features/dashboard/presentation/view/dashboard_layout_selector.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const FlexibleDashboard());
}

class FlexibleDashboard extends StatelessWidget {
  const FlexibleDashboard({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: DashboardLayoutSelector());
  }
}
