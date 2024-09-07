import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive_basics/views/adaptive_mobile_example/widgets/grid_view_item.dart';

class CustomTabletGridView extends StatelessWidget {
  const CustomTabletGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        crossAxisSpacing: 20.0,
        mainAxisSpacing: 20.0,
      ),
      itemBuilder: (context, index) => const GridViewItem(),
      itemCount: 4,
    );
  }
}
