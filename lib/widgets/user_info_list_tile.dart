import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

import '../models/user_info_model.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({
    super.key,
    required this.userInfoModel,
  });

  final UserInfoModel userInfoModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFFFAFAFA),
      elevation: 0,
      child: Center(
        child: ListTile(
          leading: SvgPicture.asset(
            userInfoModel.image,
          ),
          title: Text(
            userInfoModel.title,
            style: AppStyles.styleSemiBold16(context).copyWith(
              color: const Color(0xFF064061),
            ),
          ),
          subtitle: Text(
            userInfoModel.subtitle,
            style: AppStyles.styleRegular12(context),
          ),
        ),
      ),
    );
  }
}
