import 'package:flexible_dashboard_ui/core/constants/styles/app_colors.dart';
import 'package:flexible_dashboard_ui/core/constants/styles/app_text_styles.dart';
import 'package:flexible_dashboard_ui/features/dashboard/models/income_data.dart';
import 'package:flutter/material.dart';

class IncomeItem extends StatelessWidget {
  const IncomeItem({
    super.key,
    required this.isSelected,
    required this.incomeData,
  });
  final bool isSelected;
  final IncomeData incomeData;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      child: Row(
        children: [
          Container(
            height: isSelected ? 12 : 8,
            width: isSelected ? 12 : 8,
            decoration: ShapeDecoration(
              shape: OvalBorder(),
              color: incomeData.color,
            ),
          ),
          SizedBox(width: 4),
          Text(
            incomeData.title,
            style:
                isSelected
                    ? AppTextStyles.montserratBold16(
                      context,
                    ).copyWith(color: AppColors.darkBlue)
                    : AppTextStyles.montserratRegular16(
                      context,
                    ).copyWith(color: AppColors.darkBlue),
          ),
          Spacer(),
          Text(
            '${incomeData.value}%',
            style:
                isSelected
                    ? AppTextStyles.montserratSemiBold18(
                      context,
                    ).copyWith(color: AppColors.linkBlue)
                    : AppTextStyles.montserratMedium16(
                      context,
                    ).copyWith(color: AppColors.linkBlue),
          ),
        ],
      ),
    );
  }
}
