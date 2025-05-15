import 'package:flexible_dashboard_ui/core/constants/app_assets.dart';
import 'package:flexible_dashboard_ui/core/constants/styles/app_colors.dart';
import 'package:flexible_dashboard_ui/core/constants/styles/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class CardItem extends StatelessWidget {
  const CardItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: AppColors.primaryBlue,
          image: DecorationImage(image: AssetImage(AppAssets.imagesMaskCard)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                'Name card',
                style: AppTextStyles.montserratRegular16(
                  context,
                ).copyWith(color: AppColors.white),
              ),
              subtitle: Text(
                'Syah Bandi',
                style: AppTextStyles.montserratMedium20(
                  context,
                ).copyWith(color: AppColors.white),
              ),
              trailing: SvgPicture.asset(AppAssets.imagesGallery),
            ),
            Spacer(),
            Text(
              '0918 8124 0042 8129',
              style: AppTextStyles.montserratSemiBold24(
                context,
              ).copyWith(color: AppColors.white),
            ),
            Flexible(child: SizedBox(height: 12)),
            Text(
              '12/20 - 124',
              style: AppTextStyles.montserratRegular16(
                context,
              ).copyWith(color: AppColors.white),
            ),
          ],
        ),
      ),
    );
  }
}
