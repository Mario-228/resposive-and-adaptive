import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_and_adaptive_basics/core/utils/styles.dart';
import 'package:responsive_and_adaptive_basics/home_feature/data/model/user_info_model.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({
    super.key,
    required this.userInfoModel,
  });
  final UserInfoModel userInfoModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.0,
      color: const Color(0xffFAFAFA),
      child: Center(
        child: ListTile(
          leading: SvgPicture.asset(userInfoModel.image),
          title: FittedBox(
            alignment: Alignment.centerLeft,
            fit: BoxFit.scaleDown,
            child: Text(
              userInfoModel.title,
              textAlign: TextAlign.left,
              style: Styles.textStyleSemiBold16(context),
            ),
          ),
          subtitle: FittedBox(
            alignment: Alignment.centerLeft,
            fit: BoxFit.scaleDown,
            child: Text(
              textAlign: TextAlign.left,
              userInfoModel.subTitle,
              style: Styles.textStyleRegular12(context),
            ),
          ),
        ),
      ),
    );
  }
}
