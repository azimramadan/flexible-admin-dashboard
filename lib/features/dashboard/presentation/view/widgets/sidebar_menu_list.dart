import 'package:flexible_dashboard_ui/core/constants/app_assets.dart';
import 'package:flexible_dashboard_ui/features/dashboard/models/menu_list_item_model.dart';
import 'package:flexible_dashboard_ui/features/dashboard/presentation/view/widgets/menu_list_item.dart';
import 'package:flutter/material.dart';

class SidebarMenuList extends StatefulWidget {
  const SidebarMenuList({super.key});

  @override
  State<SidebarMenuList> createState() => _SidebarMenuListState();
}

class _SidebarMenuListState extends State<SidebarMenuList> {
  int currentPage = 0;
  final List<SidebarItemModel> menuListItems = [
    SidebarItemModel(image: AppAssets.imagesCategor, title: 'Dashboard'),
    SidebarItemModel(
      image: AppAssets.imagesConvertCard,
      title: 'My Transaction',
    ),
    SidebarItemModel(image: AppAssets.imagesGraph, title: 'Statistics'),
    SidebarItemModel(image: AppAssets.imagesWallet, title: 'Wallet Account'),
    SidebarItemModel(image: AppAssets.imagesChart, title: 'My Investmentsas'),
  ];
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: menuListItems.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 20.0, left: 28, right: 20),
          child: SidebarItem(
            sidebarItemModel: menuListItems[index],
            isActtive: currentPage == index,
            onTap: () {
              if (currentPage != index) {
                setState(() {
                  currentPage = index;
                });
              }
            },
          ),
        );
      },
    );
  }
}
