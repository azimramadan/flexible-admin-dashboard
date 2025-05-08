import 'package:flexible_dashboard_ui/core/constants/app_assets.dart';
import 'package:flexible_dashboard_ui/features/dashboard/models/menu_list_item_model.dart';
import 'package:flexible_dashboard_ui/features/dashboard/presentation/view/widgets/menu_list_item.dart';
import 'package:flutter/material.dart';

class SidebarBottomActions extends StatelessWidget {
  const SidebarBottomActions({super.key});
  static const List<SidebarItemModel> bottomActionsItems = [
    SidebarItemModel(image: AppAssets.imagesSetting, title: 'Setting system'),
    SidebarItemModel(image: AppAssets.imagesLogout, title: 'Logout account'),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children:
          bottomActionsItems
              .map(
                (item) => SidebarItem(
                  isActtive: false,
                  onTap: () {},
                  sidebarItemModel: item,
                ),
              )
              .toList(),
    );
  }
}
