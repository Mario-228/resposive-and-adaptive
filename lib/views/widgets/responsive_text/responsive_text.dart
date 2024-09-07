import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive_basics/core/util/get_responsive_font_size/get_responsive_font_size.dart';

class ResponsiveText extends StatelessWidget {
  const ResponsiveText({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Responsive Text"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Text(
            "Title Text",
            style: TextStyle(
              fontSize: GetResponsiveFontSize.getResponsiveTextSize(
                  context: context, fontSize: 20.0),
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Text(
            "Body Text",
            style: TextStyle(
              fontSize: GetResponsiveFontSize.getResponsiveTextSize(
                  context: context, fontSize: 16.0),
            ),
          ),
        ],
      ),
    );
  }
}
