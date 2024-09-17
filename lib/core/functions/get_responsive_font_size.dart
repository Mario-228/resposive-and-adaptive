import 'package:flutter/material.dart';

abstract class GetResponsiveFontSize {
  const GetResponsiveFontSize();
  static double getResponsiveTextSize(
      {required BuildContext context, required double fontSize}) {
    double scaleFactor = _getScaleFactor(context);
    double responsiveTextSize = fontSize * scaleFactor;
    double lowerLimit = fontSize * 0.8;
    double upperLimit = fontSize * 1.2;
    return responsiveTextSize.clamp(lowerLimit, upperLimit);
  }

  static double _getScaleFactor(BuildContext context) {
    final double width = MediaQuery.sizeOf(context).width;
    if (width < 600) {
      return width / 400.0;
    } else if (width < 900) {
      return width / 700.0;
    } else {
      return width / 1000.0;
    }
  }
}
