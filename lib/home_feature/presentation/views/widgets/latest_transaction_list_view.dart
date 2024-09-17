import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive_basics/core/utils/app_images.dart';
import 'package:responsive_and_adaptive_basics/home_feature/data/model/user_info_model.dart';
import 'package:responsive_and_adaptive_basics/home_feature/presentation/views/widgets/user_info_list_tile.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({super.key});
  static const List<UserInfoModel> items = [
    UserInfoModel(
      image: AppImages.imagesAvatar1,
      title: "Madrani Andi",
      subTitle: "Madraniadi20@gmail",
    ),
    UserInfoModel(
      image: AppImages.imagesAvatar2,
      title: "Madrani Andi",
      subTitle: "Madraniadi20@gmail",
    ),
    UserInfoModel(
      image: AppImages.imagesAvatar1,
      title: "Madrani Andi",
      subTitle: "Madraniadi20@gmail",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    //solution 1
    // return
    // SizedBox(
    //   height: 80.0,
    //   child: ListView.separated(
    //       scrollDirection: Axis.horizontal,
    //       itemBuilder: (context, index) => IntrinsicWidth(
    //             child: UserInfoListTile(
    //               userInfoModel: items[index],
    //             ),
    //           ),
    //       separatorBuilder: (context, index) => const SizedBox(width: 12.0),
    //       itemCount: items.length),
    // );

    //solution 2
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: items
            .map((e) =>
                IntrinsicWidth(child: UserInfoListTile(userInfoModel: e)))
            .toList(),
      ),
    );
  }
}
