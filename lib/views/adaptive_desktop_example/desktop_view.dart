import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive_basics/views/adaptive_desktop_example/widgets/custom_desktop_widget.dart';
import 'package:responsive_and_adaptive_basics/views/adaptive_mobile_example/widgets/build_custom_drawer.dart';
import 'package:responsive_and_adaptive_basics/views/adaptive_tablet_example/tablet_view.dart';

class DesktopView extends StatelessWidget {
  const DesktopView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: BuildCustomDrawer(),
        ),
        Expanded(
          flex: 3,
          child: TabletView(),
        ),
        SizedBox(
          width: 20.0,
        ),
        Expanded(
          child: CustomDesktopWidget(),
        ),
      ],
    );
  }
}
