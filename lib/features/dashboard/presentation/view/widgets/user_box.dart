import 'package:flexible_dashboard_ui/core/constants/styles/app_colors.dart';
import 'package:flexible_dashboard_ui/core/constants/styles/app_text_styles.dart';
import 'package:flexible_dashboard_ui/features/dashboard/models/user_info_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class UserBox extends StatelessWidget {
  const UserBox({super.key, required this.userInfoModel});
  final UserInfoModel userInfoModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: AppColors.lightGray,
      child: ListTile(
        leading: SvgPicture.asset(userInfoModel.image),
        title: Text(
          userInfoModel.name,
          style: AppTextStyles.montserratSemiBold16,
        ),
        subtitle: Text(
          userInfoModel.email,
          style: AppTextStyles.montserratRegular12,
        ),
      ),
    );
  }
}
