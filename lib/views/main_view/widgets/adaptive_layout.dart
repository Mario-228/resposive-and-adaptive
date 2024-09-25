import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive_basics/core/utils/size_config.dart';

class AdaptiveLayout extends StatelessWidget {
  const AdaptiveLayout({
    super.key,
    required this.mobileView,
    required this.tabletView,
    required this.desktopView,
  });
  final WidgetBuilder mobileView, tabletView, desktopView;
  @override
  Widget build(BuildContext context) {
    SizeConfig.initScreenSize(context);
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < SizeConfig.tabletWidth) {
        return mobileView(context);
      } else if (constraints.maxWidth < SizeConfig.desktopWidth) {
        return tabletView(context);
      } else {
        return desktopView(context);
      }
    });
  }
}
