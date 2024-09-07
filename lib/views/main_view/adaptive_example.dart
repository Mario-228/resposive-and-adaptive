import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive_basics/views/main_view/widgets/adaptive_example_body.dart';
import 'package:responsive_and_adaptive_basics/views/adaptive_mobile_example/widgets/build_custom_drawer.dart';
import 'package:responsive_and_adaptive_basics/views/adaptive_mobile_example/widgets/custom_app_bar.dart';

class AdaptiveExample extends StatelessWidget {
  const AdaptiveExample({super.key});
  static final GlobalKey<ScaffoldState> scaffoldKey =
      GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: const BuildCustomDrawer(),
      backgroundColor: const Color(0xFFE5E5E5),
      appBar: const CustomAppBar(),
      body: const AdaptiveExampleBody(),
    );
  }
}
