import 'package:flexible_dashboard_ui/core/constants/styles/app_colors.dart';
import 'package:flexible_dashboard_ui/features/dashboard/presentation/view/widgets/invoice_actions.dart';
import 'package:flexible_dashboard_ui/features/dashboard/presentation/view/widgets/invoice_header.dart';
import 'package:flexible_dashboard_ui/features/dashboard/presentation/view/widgets/recent_transactions_section.dart';
import 'package:flutter/material.dart';

class QuickInvoiceSection extends StatelessWidget {
  const QuickInvoiceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        color: AppColors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: InvoiceHeader(),
          ),
          SizedBox(height: 24),
          RecentTransactionsSection(),
          SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: InvoiceActions(),
          ),
        ],
      ),
    );
  }
}
