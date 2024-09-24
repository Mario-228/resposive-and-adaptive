import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CustomDotsIndicator extends StatelessWidget {
  const CustomDotsIndicator({
    super.key,
    required this.onboardingController,
    required this.length,
  });
  final PageController onboardingController;
  final int length;
  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: onboardingController,
      count: length,
      effect: const ExpandingDotsEffect(
        dotColor: Color(0xffF1F1F1),
        activeDotColor: Color(0xff4EB7F2),
        dotHeight: 10.0,
        dotWidth: 10.0,
        spacing: 5.0,
        expansionFactor: 4.0,
      ),
    );
  }
}
