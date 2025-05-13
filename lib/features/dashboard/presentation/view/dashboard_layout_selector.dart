import 'package:flexible_dashboard_ui/core/widgets/adaptive_layout.dart';
import 'package:flexible_dashboard_ui/features/dashboard/presentation/view/dashboard_desktop_view.dart';
import 'package:flexible_dashboard_ui/features/dashboard/presentation/view/mobile_layout_view.dart';
import 'package:flexible_dashboard_ui/features/dashboard/presentation/view/tablet_layout_view.dart';
import 'package:flexible_dashboard_ui/features/dashboard/presentation/view/widgets/side_bar.dart';
import 'package:flutter/material.dart';

class DashboardLayoutSelector extends StatefulWidget {
  const DashboardLayoutSelector({super.key});

  @override
  State<DashboardLayoutSelector> createState() =>
      _DashboardLayoutSelectorState();
}

class _DashboardLayoutSelectorState extends State<DashboardLayoutSelector> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar:
          MediaQuery.sizeOf(context).width < 800
              ? AppBar(
                leading: IconButton(
                  onPressed: () {
                    scaffoldKey.currentState!.openDrawer();
                  },
                  icon: Icon(Icons.menu),
                ),
                elevation: 0,
                surfaceTintColor: Colors.transparent,
                backgroundColor: Colors.transparent,
              )
              : null,
      drawer:
          MediaQuery.sizeOf(context).width < 800
              ? SizedBox(
                width: MediaQuery.sizeOf(context).width * .7,
                child: Sidebar(),
              )
              : null,
      body: AdaptiveLayout(
        mobileLayout: (context) {
          return const MobileLayoutView();
        },
        tabletLayout: (context) {
          return const TabletLayoutView();
        },
        desktopLayout: (context) {
          return const DashboardDesktopView();
        },
      ),
    );
  }
}
