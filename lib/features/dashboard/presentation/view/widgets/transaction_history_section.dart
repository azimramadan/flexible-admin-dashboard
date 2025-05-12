import 'package:flexible_dashboard_ui/core/constants/styles/app_colors.dart';
import 'package:flexible_dashboard_ui/core/constants/styles/app_text_styles.dart';
import 'package:flexible_dashboard_ui/features/dashboard/presentation/view/widgets/transaction_header.dart';
import 'package:flexible_dashboard_ui/features/dashboard/presentation/view/widgets/transactions_list.dart';
import 'package:flutter/material.dart';

class TransactionHistorySection extends StatelessWidget {
  const TransactionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TransactionHeader(),
        SizedBox(height: 20),
        Text(
          '13 April 2022',
          style: AppTextStyles.montserratMedium16.copyWith(
            color: AppColors.midGray,
          ),
        ),
        SizedBox(height: 16),
        TransactionsList(),
      ],
    );
  }
}
