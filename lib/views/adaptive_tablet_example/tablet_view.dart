import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive_basics/views/adaptive_mobile_example/widgets/custom_list_view.dart';
import 'package:responsive_and_adaptive_basics/views/adaptive_tablet_example/widgets/custom_tablet_list_view.dart';

class TabletView extends StatelessWidget {
  const TabletView({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        CustomTabletListView(),
        SliverToBoxAdapter(
          child: SizedBox(height: 20.0),
        ),
        CustomListView(),
      ],
    );
  }
}
