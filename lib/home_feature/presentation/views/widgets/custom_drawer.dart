import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive_basics/core/utils/app_images.dart';
import 'package:responsive_and_adaptive_basics/home_feature/data/model/user_info_model.dart';
import 'package:responsive_and_adaptive_basics/home_feature/presentation/views/widgets/custom_drawer_bottom.dart';
import 'package:responsive_and_adaptive_basics/home_feature/presentation/views/widgets/custom_drawer_list_view.dart';
import 'package:responsive_and_adaptive_basics/home_feature/presentation/views/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTile(
              userInfoModel: UserInfoModel(
                  image: AppImages.imagesAvatar1,
                  title: "Lekan Okeowo",
                  subTitle: "demo@gmail.com"),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 8.0,
            ),
          ),
          SliverToBoxAdapter(child: CustomDrawerListView()),
          SliverFillRemaining(
            hasScrollBody: false,
            child: CustomDrawerBottom(),
          ),
        ],
      ),
    );
  }
}
