import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive_basics/home_feature/presentation/views/widgets/dashboard_desktop_layout.dart';
import 'package:responsive_and_adaptive_basics/home_feature/presentation/views/widgets/dashboard_mobile_layout.dart';
import 'package:responsive_and_adaptive_basics/home_feature/presentation/views/widgets/dashboard_tablet_layout.dart';
import 'package:responsive_and_adaptive_basics/views/main_view/widgets/adaptive_layout.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    //500 ,
    print(MediaQuery.sizeOf(context).width.toInt());
    return Scaffold(
      backgroundColor: const Color(0xFFF7F9FA),
      body: AdaptiveLayout(
        mobileView: (context) => const DashboardMobileLayout(),
        tabletView: (context) => const DashboardTabletLayout(),
        desktopView: (context) => const DashboardDesktopLayout(),
      ),
    );
  }
}
