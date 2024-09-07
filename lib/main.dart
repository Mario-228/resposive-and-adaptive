import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
// import 'package:responsive_and_adaptive_basics/views/main_view/adaptive_example.dart';
import 'package:responsive_and_adaptive_basics/views/widgets/responsive_text/responsive_text.dart';
// import 'package:responsive_and_adaptive_basics/views/widgets/aspect_ratio_example/aspect_ratio_example.dart';
// import 'package:responsive_and_adaptive_basics/views/widgets/intrinsic_example/intrinsic_example.dart';
// import 'package:responsive_and_adaptive_basics/views/widgets/fitted_box_example/fitted_box_example.dart';
// import 'package:responsive_and_adaptive_basics/views/widgets/expanded_example/expanded_exmaple.dart';
// import 'package:responsive_and_adaptive_basics/views/widgets/flexible_widget_example/flexible_widget_example.dart';
// import 'package:responsive_and_adaptive_basics/views/widgets/layout_builder_example/layout_builder_home_layout.dart';

void main() {
  runApp(DevicePreview(
      enabled: true,
      builder: (context) {
        return const MyApp();
      }));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(
        useMaterial3: true,
      ),
      home: const ResponsiveText(),
    );
  }
}
