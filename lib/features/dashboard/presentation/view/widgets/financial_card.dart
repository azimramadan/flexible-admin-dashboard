import 'package:flexible_dashboard_ui/core/constants/styles/app_colors.dart';
import 'package:flexible_dashboard_ui/features/dashboard/models/financial_card_model.dart';
import 'package:flexible_dashboard_ui/features/dashboard/presentation/view/widgets/card_content.dart';
import 'package:flexible_dashboard_ui/features/dashboard/presentation/view/widgets/card_header.dart';
import 'package:flutter/material.dart';

class FinancialCard extends StatelessWidget {
  const FinancialCard({
    super.key,
    required this.financialCardModel,
    required this.isActive,
    required this.onTap,
  });
  final FinancialCardModel financialCardModel;
  final bool isActive;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: AppColors.beige),
          color: isActive ? AppColors.primaryBlue : AppColors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CardHeader(image: financialCardModel.image, isActive: isActive),
            SizedBox(height: 34),
            CardContent(
              title: financialCardModel.title,
              amount: financialCardModel.amount,
              date: financialCardModel.date,
              isActive: isActive,
            ),
          ],
        ),
      ),
    );
  }
}
