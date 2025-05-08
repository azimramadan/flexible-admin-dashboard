import 'package:flexible_dashboard_ui/features/dashboard/presentation/view/widgets/all_expenses_section.dart';
import 'package:flutter/material.dart';

class MainContentArea extends StatelessWidget {
  const MainContentArea({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AllExpensesSection(),
        SizedBox(height: 24),
        Expanded(child: QuickInvoiceSection()),
      ],
    );
  }
}

class QuickInvoiceSection extends StatelessWidget {
  const QuickInvoiceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox();
  }
}
