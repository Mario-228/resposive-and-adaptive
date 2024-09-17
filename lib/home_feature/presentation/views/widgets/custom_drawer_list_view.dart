import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive_basics/core/utils/app_images.dart';
import 'package:responsive_and_adaptive_basics/home_feature/data/model/drawer_item_model.dart';
import 'package:responsive_and_adaptive_basics/home_feature/presentation/views/widgets/custom_drawer_item.dart';

class CustomDrawerListView extends StatefulWidget {
  const CustomDrawerListView({
    super.key,
  });
  static int selectedIndex = 0;
  static const List<DrawerItemModel> items = [
    DrawerItemModel(
      image: AppImages.imagesDashboard,
      title: "Dashboard",
    ),
    DrawerItemModel(
      image: AppImages.imagesMyTransaction,
      title: "My Transaction",
    ),
    DrawerItemModel(
      image: AppImages.imagesStatistics,
      title: "Statistics",
    ),
    DrawerItemModel(
      image: AppImages.imagesWalletAccount,
      title: "Wallet Account",
    ),
    DrawerItemModel(
      image: AppImages.imagesMyInvestments,
      title: "My Investments",
    ),
  ];

  @override
  State<CustomDrawerListView> createState() => _CustomDrawerListViewState();
}

class _CustomDrawerListViewState extends State<CustomDrawerListView> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.only(
          left: 28.0, right: 20.0, top: 20.0, bottom: 20.0),
      itemBuilder: (context, index) => GestureDetector(
        onTap: () {
          if (CustomDrawerListView.selectedIndex != index) {
            setState(() {
              CustomDrawerListView.selectedIndex = index;
            });
          }
        },
        child: CustomDrawerItem(
          item: CustomDrawerListView.items[index],
          isClicked: index == CustomDrawerListView.selectedIndex,
        ),
      ),
      itemCount: CustomDrawerListView.items.length,
      separatorBuilder: (context, index) => const SizedBox(
        height: 20.0,
      ),
    );
  }
}
