import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive_basics/views/widgets/layout_builder_example/home_layout_body.dart';

class LayoutBuilderHomeLayout extends StatelessWidget {
  const LayoutBuilderHomeLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: HomeLayoutBody(),
      ),
    );
  }
}
