import 'package:flutter/material.dart';

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
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 800) {
        return mobileView(context);
      } else if (constraints.maxWidth < 1200) {
        return tabletView(context);
      } else {
        return desktopView(context);
      }
    });
  }
}
