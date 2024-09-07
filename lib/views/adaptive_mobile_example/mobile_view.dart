import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive_basics/views/adaptive_mobile_example/widgets/build_custom_grid_view.dart';
import 'package:responsive_and_adaptive_basics/views/adaptive_mobile_example/widgets/custom_list_view.dart';

class MobileView extends StatelessWidget {
  const MobileView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        BuildCustomGridView(),
        SliverToBoxAdapter(
          child: SizedBox(height: 20.0),
        ),
        CustomListView(),
      ],
    );
  }
}
