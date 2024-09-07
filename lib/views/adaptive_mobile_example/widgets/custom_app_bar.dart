import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive_basics/views/main_view/adaptive_example.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if ((constraints.maxWidth - 40) < 900) {
        return AppBar(
          backgroundColor: Colors.black,
          leading: IconButton(
            onPressed: () =>
                AdaptiveExample.scaffoldKey.currentState!.openDrawer(),
            icon: const Icon(
              Icons.menu,
              color: Colors.white,
            ),
          ),
        );
      } else {
        return const SizedBox();
      }
    });
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
