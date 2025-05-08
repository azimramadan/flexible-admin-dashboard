import 'package:flexible_dashboard_ui/core/constants/styles/app_text_styles.dart';
import 'package:flexible_dashboard_ui/features/dashboard/presentation/view/widgets/timeframe_dropdown.dart';
import 'package:flutter/material.dart';

class ExpensesHeader extends StatelessWidget {
  const ExpensesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('All Expenses', style: AppTextStyles.montserratSemiBold20),
        Spacer(),
        TimeframeDropdown(),
      ],
    );
  }
}
