import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive_basics/core/utils/size_config.dart';

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
    if (width < SizeConfig.tabletWidth) {
      return width / 560.0;
    } else if (width < SizeConfig.desktopWidth) {
      return width / 1000.0;
    } else {
      return width / 1800.0;
    }
  }
}
