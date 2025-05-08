import 'package:flexible_dashboard_ui/core/constants/app_assets.dart';
import 'package:flexible_dashboard_ui/core/constants/styles/app_colors.dart';
import 'package:flexible_dashboard_ui/features/dashboard/models/user_info_model.dart';
import 'package:flexible_dashboard_ui/features/dashboard/presentation/view/widgets/sidebar_bottom_actions.dart';
import 'package:flexible_dashboard_ui/features/dashboard/presentation/view/widgets/sidebar_menu_list.dart';
import 'package:flexible_dashboard_ui/features/dashboard/presentation/view/widgets/user_box.dart';
import 'package:flutter/material.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.white,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(
                right: 20,
                left: 28,
                top: 28,
                bottom: 28,
              ),
              child: UserBox(
                userInfoModel: UserInfoModel(
                  name: 'Lekan Okeowo',
                  email: 'demo@gmail.com',
                  image: AppAssets.imagesAvatar1,
                ),
              ),
            ),
          ),
          SidebarMenuList(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(child: SizedBox(height: 20)),
                Padding(
                  padding: const EdgeInsets.only(right: 20, left: 28),
                  child: SidebarBottomActions(),
                ),
                SizedBox(height: 48),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
