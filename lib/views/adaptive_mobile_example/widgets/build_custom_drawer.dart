import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive_basics/views/adaptive_mobile_example/widgets/build_drawer_item.dart';
import 'package:responsive_and_adaptive_basics/views/adaptive_mobile_example/widgets/custom_drawer_header.dart';

class BuildCustomDrawer extends StatelessWidget {
  const BuildCustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Drawer(
      backgroundColor: Color(0xFFE5E5E5),
      child: SingleChildScrollView(
        child: Column(
          children: [
            CustomDrawerHeader(),
            SizedBox(
              height: 20.0,
            ),
            BuildDrawerItem(
              title: "D A S H B O A R D",
              icon: Icons.home,
            ),
            BuildDrawerItem(
              title: "S E T T I N G S",
              icon: Icons.settings,
            ),
            BuildDrawerItem(
              title: "A B O U T",
              icon: Icons.info,
            ),
            BuildDrawerItem(
              title: "L O G O U T",
              icon: Icons.logout,
            ),
          ],
        ),
      ),
    );
  }
}
