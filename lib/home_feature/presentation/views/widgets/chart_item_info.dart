import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive_basics/core/functions/get_responsive_font_size.dart';
import 'package:responsive_and_adaptive_basics/core/utils/styles.dart';

class ChartItemInfo extends StatelessWidget {
  const ChartItemInfo(
      {super.key,
      required this.title,
      required this.color,
      required this.percentage});
  final String title;
  final int color;
  final double percentage;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      minVerticalPadding: 0.0,
      horizontalTitleGap: 0.0,
      minTileHeight: 70.0,
      leading: CircleAvatar(
        radius: 6.0,
        backgroundColor: Color(color),
      ),
      title: Text(
        title,
        style: Styles.textStyleRegular16.copyWith(
            fontSize: GetResponsiveFontSize.getResponsiveTextSize(
                context: context, fontSize: 14.0)),
      ),
      trailing: Text(
        "$percentage%",
        style: Styles.textStyleMedium16.copyWith(
          color: const Color(0xff208CC8),
          fontSize: GetResponsiveFontSize.getResponsiveTextSize(
              context: context, fontSize: 14.0),
        ),
      ),
    );
  }
}
/*
soln 1
ListTile(
leading: CircleAvatar(radius: 6.0, backgroundColor: Color(color),),
title: Text(title, style: Styles.textStyleRegular16),
trailing: Text("$percentage%".toUpperCase(), style: Styles.textStyleMedium16.copyWith(color: const Color(0xff208CC8))),);
 */


/*
soln 2
Row(
      children: [
        CircleAvatar(
          radius: 12.0,
          backgroundColor: Color(color),
        ),
        const SizedBox(width: 12.0),
        Text(title, style: Styles.textStyleRegular16),
        const Spacer(),
        Text("$percentage%".toUpperCase(),
            style: Styles.textStyleMedium16
                .copyWith(color: const Color(0xff208CC8))),
        const SizedBox(height: 30.0),
      ],
    )
 */