import 'package:flexible_dashboard_ui/core/constants/styles/app_colors.dart';
import 'package:flexible_dashboard_ui/core/constants/styles/app_text_styles.dart';
import 'package:flutter/material.dart';

class CardContent extends StatelessWidget {
  const CardContent({
    super.key,
    required this.title,
    required this.date,
    required this.amount,
    required this.isActive,
  });
  final String title, date, amount;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppTextStyles.montserratSemiBold16.copyWith(
            color: isActive ? AppColors.white : AppColors.darkBlue,
          ),
        ),
        Text(
          date,
          style: AppTextStyles.montserratRegular14.copyWith(
            color: isActive ? AppColors.offWhite : AppColors.gray,
          ),
        ),
        Text(
          amount,
          style: AppTextStyles.montserratSemiBold24.copyWith(
            color: isActive ? AppColors.white : AppColors.primaryBlue,
          ),
        ),
      ],
    );
  }
}
