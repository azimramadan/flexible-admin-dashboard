import 'package:flexible_dashboard_ui/core/constants/size_config.dart';
import 'package:flexible_dashboard_ui/core/constants/styles/app_colors.dart';
import 'package:flutter/material.dart';

class AppTextStyles {
  AppTextStyles._();

  static TextStyle montserratSemiBold16(BuildContext context) => TextStyle(
    fontSize: getResponsiveFontSize(context, baseFontSize: 16),
    fontWeight: FontWeight.w600,
    color: AppColors.darkBlue,
  );
  static TextStyle montserratRegular12(BuildContext context) => TextStyle(
    fontSize: getResponsiveFontSize(context, baseFontSize: 12),
    fontWeight: FontWeight.w400,
    color: AppColors.midGray,
  );
  static TextStyle montserratBold16(BuildContext context) => TextStyle(
    fontSize: getResponsiveFontSize(context, baseFontSize: 16),
    fontWeight: FontWeight.w700,
    color: AppColors.primaryBlue,
  );
  static TextStyle montserratRegular16(BuildContext context) => TextStyle(
    fontSize: getResponsiveFontSize(context, baseFontSize: 16),
    fontWeight: FontWeight.w400,
    color: AppColors.darkBlue,
  );
  static TextStyle montserratSemiBold20(BuildContext context) => TextStyle(
    fontSize: getResponsiveFontSize(context, baseFontSize: 20),
    fontWeight: FontWeight.w600,
    color: AppColors.darkBlue,
  );
  static TextStyle montserratMedium16(BuildContext context) => TextStyle(
    fontSize: getResponsiveFontSize(context, baseFontSize: 16),
    fontWeight: FontWeight.w500,
    color: AppColors.darkBlue,
  );
  static TextStyle montserratMedium20(BuildContext context) => TextStyle(
    fontSize: getResponsiveFontSize(context, baseFontSize: 20),
    fontWeight: FontWeight.w500,
    color: AppColors.white,
  );
  static TextStyle montserratRegular14(BuildContext context) => TextStyle(
    fontSize: getResponsiveFontSize(context, baseFontSize: 14),
    fontWeight: FontWeight.w400,
    color: AppColors.midGray,
  );
  static TextStyle montserratSemiBold24(BuildContext context) => TextStyle(
    fontSize: getResponsiveFontSize(context, baseFontSize: 24),
    fontWeight: FontWeight.w600,
    color: AppColors.primaryBlue,
  );
  static TextStyle montserratSemiBold18(BuildContext context) => TextStyle(
    fontSize: getResponsiveFontSize(context, baseFontSize: 18),
    fontWeight: FontWeight.w600,
    color: AppColors.primaryBlue,
  );
}

double getResponsiveFontSize(
  BuildContext context, {
  required double baseFontSize,
}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = scaleFactor * baseFontSize;
  double lowerLimit = baseFontSize * .8;
  double upperLimit = baseFontSize * 1.2;
  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(BuildContext context) {
  double screenWidth = MediaQuery.sizeOf(context).width;
  if (screenWidth < SizeConfig.mobileBreakpoint) {
    return screenWidth / 550;
  } else if (screenWidth < SizeConfig.tabletBreakpoint) {
    return screenWidth / 1000;
  } else {
    return screenWidth / 1500;
  }
}
