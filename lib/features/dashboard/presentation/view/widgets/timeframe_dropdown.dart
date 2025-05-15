import 'package:flexible_dashboard_ui/core/constants/styles/app_colors.dart';
import 'package:flexible_dashboard_ui/core/constants/styles/app_text_styles.dart';
import 'package:flutter/material.dart';

class TimeframeDropdown extends StatelessWidget {
  const TimeframeDropdown({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.beige),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Text('Monthly', style: AppTextStyles.montserratMedium16(context)),
          Icon(Icons.keyboard_arrow_down_sharp),
        ],
      ),
    );
  }
}
