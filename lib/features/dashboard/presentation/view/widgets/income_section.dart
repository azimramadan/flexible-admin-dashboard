import 'package:flexible_dashboard_ui/core/constants/styles/app_colors.dart';
import 'package:flexible_dashboard_ui/features/dashboard/presentation/view/widgets/animated_pie_chart.dart';
import 'package:flexible_dashboard_ui/features/dashboard/presentation/view/widgets/income_header.dart';
import 'package:flutter/material.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        color: AppColors.white,
      ),
      child: Column(
        children: [
          IncomeHeader(),
          SizedBox(height: 16),
          Expanded(child: AnimatedPieChart()),
        ],
      ),
    );
  }
}
