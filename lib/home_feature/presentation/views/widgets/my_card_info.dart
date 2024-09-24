import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive_basics/core/functions/get_responsive_font_size.dart';
import 'package:responsive_and_adaptive_basics/core/utils/styles.dart';

class MyCardInfo extends StatelessWidget {
  const MyCardInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "0918 8124 0042 8129",
            style: Styles.textStyle24.copyWith(
              color: Colors.white,
              fontSize: GetResponsiveFontSize.getResponsiveTextSize(
                  context: context, fontSize: 24.0),
            ),
            textAlign: TextAlign.right,
          ),
          const SizedBox(height: 12.0),
          Text(
            "12/20 - 124",
            style: Styles.textStyleRegular16.copyWith(
              color: Colors.white,
              fontSize: GetResponsiveFontSize.getResponsiveTextSize(
                  context: context, fontSize: 16.0),
            ),
            textAlign: TextAlign.right,
          ),
        ],
      ),
    );
  }
}
