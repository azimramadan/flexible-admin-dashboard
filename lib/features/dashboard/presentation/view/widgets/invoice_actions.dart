import 'package:flexible_dashboard_ui/core/constants/styles/app_colors.dart';
import 'package:flexible_dashboard_ui/core/constants/styles/app_text_styles.dart';
import 'package:flutter/material.dart';

class InvoiceActions extends StatelessWidget {
  const InvoiceActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              backgroundColor: AppColors.white,
              elevation: 0,
              minimumSize: Size(double.infinity, 60),
              maximumSize: Size(double.infinity, 60),
              side: BorderSide.none,
            ),
            onPressed: () {},
            child: Text(
              'Add more details',
              style: AppTextStyles.montserratSemiBold18,
            ),
          ),
        ),
        SizedBox(width: 24),
        Expanded(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              backgroundColor: AppColors.primaryBlue,
              minimumSize: Size(double.infinity, 60),
              maximumSize: Size(double.infinity, 60),
            ),
            onPressed: () {},
            child: Text(
              'Send Money',
              style: AppTextStyles.montserratSemiBold18.copyWith(
                color: AppColors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
