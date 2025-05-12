import 'package:flexible_dashboard_ui/core/constants/styles/app_colors.dart';
import 'package:flexible_dashboard_ui/features/dashboard/presentation/view/widgets/all_expenses_section.dart';
import 'package:flexible_dashboard_ui/features/dashboard/presentation/view/widgets/quick_invoice_section.dart';
import 'package:flutter/material.dart';

class MainContentArea extends StatelessWidget {
  const MainContentArea({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        color: AppColors.white,
      ),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: AllExpensesSection()),
          SliverToBoxAdapter(child: SizedBox(height: 24)),
          SliverToBoxAdapter(child: QuickInvoiceSection()),
        ],
      ),
    );
  }
}
