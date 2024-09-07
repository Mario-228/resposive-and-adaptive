import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive_basics/views/adaptive_mobile_example/widgets/list_view_item.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
        itemBuilder: (context, index) => const ListViewItem(),
        separatorBuilder: (context, index) => const SizedBox(height: 10.0),
        itemCount: 10);
  }
}
