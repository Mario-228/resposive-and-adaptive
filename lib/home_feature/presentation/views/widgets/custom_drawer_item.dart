import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_and_adaptive_basics/core/utils/styles.dart';
import 'package:responsive_and_adaptive_basics/home_feature/data/model/drawer_item_model.dart';

class CustomDrawerItem extends StatelessWidget {
  const CustomDrawerItem({
    super.key,
    required this.item,
    required this.isClicked,
  });
  final DrawerItemModel item;
  final bool isClicked;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(item.image),
      title: FittedBox(
        fit: BoxFit.scaleDown,
        alignment: Alignment.centerLeft,
        child: Text(
          item.title,
          style: isClicked ? Styles.textStyleBold16 : Styles.textStyleRegular16,
        ),
      ),
      trailing: isClicked
          ? Container(
              width: 3.27,
              color: const Color(0xff4EB7F2),
            )
          : const SizedBox(),
    );
  }
}
