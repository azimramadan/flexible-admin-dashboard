import 'package:flexible_dashboard_ui/core/constants/styles/app_text_styles.dart';
import 'package:flexible_dashboard_ui/features/dashboard/presentation/view/widgets/contact_items.dart';
import 'package:flexible_dashboard_ui/features/dashboard/presentation/view/widgets/invoice_form.dart';
import 'package:flutter/material.dart';

class RecentTransactionsSection extends StatelessWidget {
  const RecentTransactionsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Text(
            'Latest Transaction',
            style: AppTextStyles.montserratMedium16,
          ),
        ),
        SizedBox(height: 12),
        ContactItems(),
        Divider(color: Color(0xffF1F1F1), height: 48),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: InvoiceForm(),
        ),
      ],
    );
  }
}
