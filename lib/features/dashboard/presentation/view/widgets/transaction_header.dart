import 'package:flexible_dashboard_ui/core/constants/styles/app_colors.dart';
import 'package:flexible_dashboard_ui/core/constants/styles/app_text_styles.dart';
import 'package:flutter/material.dart';

class TransactionHeader extends StatelessWidget {
  const TransactionHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Transaction History', style: AppTextStyles.montserratSemiBold20),
        Spacer(),
        GestureDetector(
          onTap: () {},
          child: Text(
            'See all',
            style: AppTextStyles.montserratMedium16.copyWith(
              color: AppColors.primaryBlue,
            ),
          ),
        ),
      ],
    );
  }
}
