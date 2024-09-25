import 'package:flutter/material.dart';

abstract class SizeConfig {
  static const double desktopWidth = 1200;
  static const double tabletWidth = 800;
  static late double screenWidth, screenHeight;

  static void initScreenSize(BuildContext context) {
    screenWidth = MediaQuery.sizeOf(context).width;
    screenHeight = MediaQuery.sizeOf(context).height;
  }
}
