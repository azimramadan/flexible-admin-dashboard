import 'package:flexible_dashboard_ui/core/constants/styles/app_text_styles.dart';
import 'package:flexible_dashboard_ui/features/dashboard/presentation/view/widgets/timeframe_dropdown.dart';
import 'package:flutter/material.dart';

class IncomeHeader extends StatelessWidget {
  const IncomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Income', style: AppTextStyles.montserratSemiBold20),
        Spacer(),
        TimeframeDropdown(),
      ],
    );
  }
}
