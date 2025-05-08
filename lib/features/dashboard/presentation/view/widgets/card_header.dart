import 'package:flexible_dashboard_ui/core/constants/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CardHeader extends StatelessWidget {
  const CardHeader({super.key, required this.image, required this.isActive});
  final String image;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundColor:
              isActive ? AppColors.lightBlue : AppColors.lightBackground,
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SvgPicture.asset(
                image,
                colorFilter: ColorFilter.mode(
                  isActive ? AppColors.white : AppColors.primaryBlue,
                  BlendMode.srcIn,
                ),
              ),
            ),
          ),
        ),
        Spacer(),
        Icon(
          Icons.arrow_forward_ios_rounded,
          color: isActive ? AppColors.white : AppColors.darkBlue,
        ),
      ],
    );
  }
}
