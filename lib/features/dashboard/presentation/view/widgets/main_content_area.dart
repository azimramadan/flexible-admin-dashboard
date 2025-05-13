import 'package:flexible_dashboard_ui/core/constants/styles/app_colors.dart';
import 'package:flexible_dashboard_ui/features/dashboard/presentation/view/widgets/all_expenses_section.dart';
import 'package:flexible_dashboard_ui/features/dashboard/presentation/view/widgets/income_section.dart';
import 'package:flexible_dashboard_ui/features/dashboard/presentation/view/widgets/profile_overview.dart';
import 'package:flexible_dashboard_ui/features/dashboard/presentation/view/widgets/quick_invoice_section.dart';
import 'package:flutter/material.dart';

class MainContentAreaDesktop extends StatelessWidget {
  const MainContentAreaDesktop({super.key});

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

class MainContentAreaMobileAndTablet extends StatelessWidget {
  const MainContentAreaMobileAndTablet({super.key});
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
          SliverToBoxAdapter(
            child: MyCardSectionAndTransactionHistorySection(),
          ),

          SliverToBoxAdapter(child: SizedBox(height: 24)),
          SliverFillRemaining(hasScrollBody: false, child: IncomeSection()),
        ],
      ),
    );
  }
}
