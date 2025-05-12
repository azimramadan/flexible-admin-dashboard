import 'package:flexible_dashboard_ui/features/dashboard/presentation/view/widgets/main_content_area.dart';
import 'package:flexible_dashboard_ui/features/dashboard/presentation/view/widgets/profile_overview.dart';
import 'package:flexible_dashboard_ui/features/dashboard/presentation/view/widgets/side_bar.dart';
import 'package:flutter/widgets.dart';

class DashboardDesktopView extends StatelessWidget {
  const DashboardDesktopView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(flex: 1, child: Sidebar()),
        SizedBox(width: 32),
        Expanded(
          flex: 3,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 25.0),
            child: MainContentArea(),
          ),
        ),
        SizedBox(width: 32),
        Expanded(
          flex: 2,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 25.0),
            child: ProfileOverview(),
          ),
        ),
      ],
    );
  }
}
