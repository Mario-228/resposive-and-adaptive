import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive_basics/core/functions/get_responsive_font_size.dart';
import 'package:responsive_and_adaptive_basics/core/utils/styles.dart';

class MyCardHeader extends StatelessWidget {
  const MyCardHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 31.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Name card",
              style: Styles.textStyleRegular16.copyWith(
                fontSize: GetResponsiveFontSize.getResponsiveTextSize(
                    context: context, fontSize: 16.0),
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 8.0),
            Text(
              "Syah Bandi",
              style: Styles.textStyleSemiBold20.copyWith(
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                  fontSize: GetResponsiveFontSize.getResponsiveTextSize(
                      context: context, fontSize: 20.0)),
            ),
          ],
        ),
        const Spacer(),
        const Icon(
          Icons.photo,
          size: 28.0,
        ),
        const SizedBox(width: 45.0)
      ],
    );
  }
}
