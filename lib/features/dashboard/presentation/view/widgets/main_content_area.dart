import 'package:flexible_dashboard_ui/features/dashboard/presentation/view/widgets/all_expenses_section.dart';
import 'package:flexible_dashboard_ui/features/dashboard/presentation/view/widgets/quick_invoice_section.dart';
import 'package:flutter/material.dart';

class MainContentArea extends StatelessWidget {
  const MainContentArea({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: AllExpensesSection()),
        SliverToBoxAdapter(child: SizedBox(height: 24)),
        SliverToBoxAdapter(child: QuickInvoiceSection()),
      ],
    );
  }
}
