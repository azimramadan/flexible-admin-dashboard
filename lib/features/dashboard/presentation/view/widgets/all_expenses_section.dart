import 'package:flexible_dashboard_ui/core/constants/styles/app_colors.dart';
import 'package:flexible_dashboard_ui/features/dashboard/presentation/view/widgets/expenses_header.dart';
import 'package:flexible_dashboard_ui/features/dashboard/presentation/view/widgets/financial_cards_row.dart';
import 'package:flutter/material.dart';

class AllExpensesSection extends StatelessWidget {
  const AllExpensesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        color: AppColors.white,
      ),
      child: Column(
        children: [
          Padding(padding: const EdgeInsets.all(20), child: ExpensesHeader()),
          SizedBox(height: 16),
          FinancialCardsRow(),
        ],
      ),
    );
  }
}
