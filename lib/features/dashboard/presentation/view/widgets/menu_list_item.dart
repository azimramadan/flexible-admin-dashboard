import 'package:flexible_dashboard_ui/core/constants/styles/app_colors.dart';
import 'package:flexible_dashboard_ui/core/constants/styles/app_text_styles.dart';
import 'package:flexible_dashboard_ui/features/dashboard/models/menu_list_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SidebarItem extends StatelessWidget {
  const SidebarItem({
    super.key,
    required this.isActtive,
    required this.onTap,
    required this.sidebarItemModel,
  });
  final SidebarItemModel sidebarItemModel;
  final bool isActtive;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: ListTile(
        leading: SvgPicture.asset(sidebarItemModel.image),
        title: Text(
          sidebarItemModel.title,
          style:
              isActtive
                  ? AppTextStyles.montserratSemiBold16.copyWith(
                    color: AppColors.accentBlue,
                  )
                  : AppTextStyles.montserratRegular16.copyWith(
                    color: AppColors.darkBlue,
                  ),
        ),
        trailing:
            isActtive
                ? Container(
                  width: 3,
                  height: double.infinity,
                  color: AppColors.accentBlue,
                )
                : null,
      ),
    );
  }
}
