import 'package:flexible_dashboard_ui/core/constants/styles/app_colors.dart';
import 'package:flexible_dashboard_ui/core/constants/styles/app_text_styles.dart';
import 'package:flutter/material.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({
    super.key,
    required this.title,
    required this.date,
    required this.amount,
    required this.color,
  });
  final String title, date, amount;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: AppColors.offWhite,
      child: ListTile(
        title: Text(title, style: AppTextStyles.montserratSemiBold16(context)),
        subtitle: Text(
          date,
          style: AppTextStyles.montserratRegular16(
            context,
          ).copyWith(color: AppColors.midGray),
        ),
        trailing: Text(
          amount,
          style: AppTextStyles.montserratSemiBold20(
            context,
          ).copyWith(color: color),
        ),
      ),
    );
  }
}
