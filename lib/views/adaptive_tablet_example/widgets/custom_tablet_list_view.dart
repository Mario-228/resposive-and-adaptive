import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive_basics/views/adaptive_mobile_example/widgets/grid_view_item.dart';

class CustomTabletListView extends StatelessWidget {
  const CustomTabletListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: MediaQuery.of(context).size.width * 0.138,
        child: ListView.separated(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) =>
                const AspectRatio(aspectRatio: 1 / 1, child: GridViewItem()),
            separatorBuilder: (context, index) => const SizedBox(width: 10.0),
            itemCount: 10),
      ),
    );
  }
}
