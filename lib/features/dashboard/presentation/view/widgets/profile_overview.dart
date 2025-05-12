import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flexible_dashboard_ui/core/constants/app_assets.dart';
import 'package:flexible_dashboard_ui/core/constants/styles/app_colors.dart';
import 'package:flexible_dashboard_ui/core/constants/styles/app_text_styles.dart';
import 'package:flexible_dashboard_ui/features/dashboard/presentation/view/widgets/card_item.dart';
import 'package:flexible_dashboard_ui/features/dashboard/presentation/view/widgets/cards_page_view.dart';
import 'package:flexible_dashboard_ui/features/dashboard/presentation/view/widgets/dots_indicator.dart';
import 'package:flexible_dashboard_ui/features/dashboard/presentation/view/widgets/my_card_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
      child: Column(children: [MyCardSection()]),
    );
  }
}

class TransactionHistorySection extends StatelessWidget {
  const TransactionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Placeholder();
  }
}

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Placeholder();
  }
}
