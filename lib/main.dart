import 'package:device_preview/device_preview.dart';
import 'package:flexible_dashboard_ui/core/constants/styles/app_colors.dart';
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
      debugShowCheckedModeBanner: false,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.lightBackground,
        fontFamily: 'Montserrat',
      ),
      home: const DashboardLayoutSelector(),
    );
  }
}
