import 'package:flexible_dashboard_ui/core/constants/app_assets.dart';
import 'package:flexible_dashboard_ui/core/constants/styles/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class InvoiceHeader extends StatelessWidget {
  const InvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Quick Invoice', style: AppTextStyles.montserratSemiBold20),
        Spacer(),
        SvgPicture.asset(AppAssets.imagesAdd),
      ],
    );
  }
}
