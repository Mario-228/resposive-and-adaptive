import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive_basics/views/adaptive_mobile_example/widgets/grid_view_item.dart';
import 'package:responsive_and_adaptive_basics/views/adaptive_mobile_example/widgets/list_view_item.dart';

class CustomDesktopWidget extends StatelessWidget {
  const CustomDesktopWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Expanded(
          flex: 2,
          child: GridViewItem(),
        ),
        SizedBox(
          height: 20.0,
        ),
        Expanded(
          child: ListViewItem(),
        ),
      ],
    );
  }
}
