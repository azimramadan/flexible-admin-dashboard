import 'package:flexible_dashboard_ui/core/constants/app_assets.dart';
import 'package:flexible_dashboard_ui/features/dashboard/models/user_info_model.dart';
import 'package:flexible_dashboard_ui/features/dashboard/presentation/view/widgets/user_box.dart';
import 'package:flutter/material.dart';

class ContactItems extends StatelessWidget {
  const ContactItems({super.key});

  static const List<UserInfoModel> items = [
    UserInfoModel(
      name: 'Madrani Andi',
      email: 'Madraniadi20@gmail',
      image: AppAssets.imagesAvatar3,
    ),
    UserInfoModel(
      name: 'Josua Nunito',
      email: 'Josh Nunito@gmail.com',
      image: AppAssets.imagesAvatar2,
    ),
    UserInfoModel(
      name: 'Lekan Okeowo',
      email: 'demo@gmail.com',
      image: AppAssets.imagesAvatar3,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children:
            items.asMap().entries.map((item) {
              return Padding(
                padding:
                    item.key == 0
                        ? EdgeInsets.only(left: 20)
                        : item.key == 2
                        ? EdgeInsets.only(right: 20)
                        : EdgeInsets.zero,
                child: IntrinsicWidth(
                  child: UserBox(userInfoModel: item.value),
                ),
              );
            }).toList(),
      ),
    );
  }
}
