import 'package:flexible_dashboard_ui/core/constants/styles/app_colors.dart';
import 'package:flexible_dashboard_ui/features/dashboard/presentation/view/widgets/income_section.dart';
import 'package:flexible_dashboard_ui/features/dashboard/presentation/view/widgets/my_card_section.dart';
import 'package:flexible_dashboard_ui/features/dashboard/presentation/view/widgets/transaction_history_section.dart';
import 'package:flutter/material.dart';

class ProfileOverview extends StatelessWidget {
  const ProfileOverview({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: MyCardSectionAndTransactionHistorySection()),

        SliverToBoxAdapter(child: SizedBox(height: 24)),
        SliverFillRemaining(hasScrollBody: false, child: IncomeSection()),
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
