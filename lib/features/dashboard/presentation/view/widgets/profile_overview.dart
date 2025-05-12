import 'package:flexible_dashboard_ui/core/constants/styles/app_colors.dart';
import 'package:flexible_dashboard_ui/core/constants/styles/app_text_styles.dart';
import 'package:flexible_dashboard_ui/features/dashboard/presentation/view/widgets/my_card_section.dart';
import 'package:flexible_dashboard_ui/features/dashboard/presentation/view/widgets/transaction_header.dart';
import 'package:flexible_dashboard_ui/features/dashboard/presentation/view/widgets/transaction_history_section.dart';
import 'package:flutter/material.dart';

class ProfileOverview extends StatelessWidget {
  const ProfileOverview({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: MyCardSectionAndTransactionHistorySection()),

        // SliverToBoxAdapter(child: SizedBox(height: 24)),
        // SliverToBoxAdapter(child: IncomeSection()),
      ],
    );
  }
}

class MyCardSectionAndTransactionHistorySection extends StatelessWidget {
  const MyCardSectionAndTransactionHistorySection({super.key});

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
          MyCardSection(),
          Divider(color: Color(0xffF1F1F1), height: 48),
          TransactionHistorySection(),
        ],
      ),
    );
  }
}

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

class TransactionItem extends StatelessWidget {
  const TransactionItem({
    super.key,
    required this.title,
    required this.date,
    required this.amount,
    required this.color,
  });
  final String title, date, amount;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: AppColors.offWhite,
      child: ListTile(
        title: Text(title, style: AppTextStyles.montserratSemiBold16),
        subtitle: Text(
          date,
          style: AppTextStyles.montserratRegular16.copyWith(
            color: AppColors.midGray,
          ),
        ),
        trailing: Text(
          amount,
          style: AppTextStyles.montserratSemiBold20.copyWith(color: color),
        ),
      ),
    );
  }
}

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Placeholder();
  }
}
