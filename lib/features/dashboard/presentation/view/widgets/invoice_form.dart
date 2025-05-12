import 'package:flexible_dashboard_ui/features/dashboard/presentation/view/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class InvoiceForm extends StatelessWidget {
  const InvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: CustomTextField(
                hint: 'Type customer name',
                title: 'Customer name',
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: CustomTextField(
                hint: 'Type customer email',
                title: 'Customer Email',
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: CustomTextField(
                hint: 'Type customer name',
                title: 'Item name',
              ),
            ),
            SizedBox(width: 16),
            Expanded(child: CustomTextField(hint: 'USD', title: 'Item mount')),
          ],
        ),
      ],
    );
  }
}
