import 'package:flexible_dashboard_ui/core/constants/styles/app_colors.dart';
import 'package:flexible_dashboard_ui/features/dashboard/presentation/view/widgets/transaction_item.dart';
import 'package:flutter/material.dart';

class TransactionsList extends StatelessWidget {
  const TransactionsList({super.key});

  static const List<List<String>> items = [
    ['Juni Mobile App project', '13 Apr, 2022 at 3:30 PM', '\$20,129'],
    ['Landing Page project', '13 Apr, 2022 at 3:30 PM', '\$2,000'],
    ['Cash Withdrawal', '13 Apr, 2022 ', '\$20,129'],
  ];
  static const List<Color> colors = [
    AppColors.dangerRed,
    AppColors.successGreen,
    AppColors.successGreen,
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        items.length,
        (index) => TransactionItem(
          amount: items[index][2],
          date: items[index][1],
          title: items[index][0],
          color: colors[index],
        ),
      ),
    );
  }
}
