import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive_basics/views/widgets/layout_builder_example/desktop_layout.dart';
import 'package:responsive_and_adaptive_basics/views/widgets/layout_builder_example/mobile_layout.dart';

class HomeLayoutBody extends StatelessWidget {
  const HomeLayoutBody({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth <= 500) {
          return const MobileLayout();
        } else {
          return const DesktopLayout();
        }
      },
    );
  }
}
