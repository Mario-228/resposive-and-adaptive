import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive_basics/core/utils/app_images.dart';
import 'package:responsive_and_adaptive_basics/home_feature/data/model/drawer_item_model.dart';
import 'package:responsive_and_adaptive_basics/home_feature/presentation/views/widgets/custom_drawer_item.dart';

class CustomDrawerBottom extends StatelessWidget {
  const CustomDrawerBottom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:
          EdgeInsets.only(top: 32.0, left: 28.0, right: 20.0, bottom: 48.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: SizedBox(
              height: 32.0,
            ),
          ),
          CustomDrawerItem(
            item: DrawerItemModel(
                image: AppImages.imagesSettings, title: "Setting system"),
            isClicked: false,
          ),
          CustomDrawerItem(
            item: DrawerItemModel(
                image: AppImages.imagesLogout, title: "Logout account"),
            isClicked: false,
          ),
        ],
      ),
    );
  }
}
/*Padding(
      padding:
          EdgeInsets.only(top: 32.0, left: 28.0, right: 20.0, bottom: 48.0),
      child: Column(
        children: [
          Spacer(), //or Expanded(child: SizedBox(height: 20.0,)), => to set min height
          CustomDrawerItem(
              item: DrawerItemModel(
                  image: AppImages.imagesSettings, title: "Setting system"),
              isClicked: false),
          CustomDrawerItem(
              item: DrawerItemModel(
                  image: AppImages.imagesLogout, title: "Logout account"),
              isClicked: false),
        ],
      ),
    ); */