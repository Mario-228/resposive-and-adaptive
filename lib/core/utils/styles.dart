import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive_basics/core/functions/get_responsive_font_size.dart';

abstract class Styles {
  const Styles();

  static TextStyle textStyleRegular12(BuildContext context) {
    return TextStyle(
      fontSize: GetResponsiveFontSize.getResponsiveTextSize(
          context: context, fontSize: 12.0),
      fontWeight: FontWeight.w400,
      fontFamily: "Montserrat",
      color: const Color(0xffAAAAAA),
    );
  }

  static TextStyle textStyleRegular14(BuildContext context) {
    return TextStyle(
      fontSize: GetResponsiveFontSize.getResponsiveTextSize(
          context: context, fontSize: 14.0),
      fontWeight: FontWeight.w400,
      fontFamily: "Montserrat",
      color: const Color(0xffAAAAAA),
    );
  }

  static TextStyle textStyleRegular16(BuildContext context) {
    return TextStyle(
      fontSize: GetResponsiveFontSize.getResponsiveTextSize(
          context: context, fontSize: 16.0),
      fontWeight: FontWeight.w400,
      fontFamily: "Montserrat",
      color: const Color(0xff064061),
    );
  }

  static TextStyle textStyleMedium16(BuildContext context) {
    return TextStyle(
      fontSize: GetResponsiveFontSize.getResponsiveTextSize(
          context: context, fontSize: 16.0),
      fontWeight: FontWeight.w500,
      fontFamily: "Montserrat",
      color: const Color(0xff064061),
    );
  }

  static TextStyle textStyleSemiBold16(BuildContext context) {
    return TextStyle(
      fontSize: GetResponsiveFontSize.getResponsiveTextSize(
          context: context, fontSize: 16.0),
      fontWeight: FontWeight.w600,
      fontFamily: "Montserrat",
      color: const Color(0xff064061),
    );
  }

  static TextStyle textStyleBold16(BuildContext context) {
    return TextStyle(
      fontSize: GetResponsiveFontSize.getResponsiveTextSize(
          context: context, fontSize: 16.0),
      fontWeight: FontWeight.w700,
      fontFamily: "Montserrat",
      color: const Color(0xff4EB7F2),
    );
  }

  static TextStyle textStyleSemiBold18(BuildContext context) {
    return TextStyle(
      fontSize: GetResponsiveFontSize.getResponsiveTextSize(
          context: context, fontSize: 18.0),
      fontWeight: FontWeight.w600,
      fontFamily: "Montserrat",
      color: const Color(0xff4EB7F2),
    );
  }

  static TextStyle textStyleSemiBold20(BuildContext context) {
    return TextStyle(
      fontSize: GetResponsiveFontSize.getResponsiveTextSize(
          context: context, fontSize: 20.0),
      fontWeight: FontWeight.w600,
      fontFamily: "Montserrat",
      color: const Color(0xff064061),
    );
  }

  static TextStyle textStyle24(BuildContext context) {
    return TextStyle(
      fontSize: GetResponsiveFontSize.getResponsiveTextSize(
          context: context, fontSize: 24.0),
      fontWeight: FontWeight.w600,
      fontFamily: "Montserrat",
      color: const Color(0xff4EB7F2),
    );
  }
}
