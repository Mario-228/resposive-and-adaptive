import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive_basics/home_feature/presentation/views/widgets/chart_item_info.dart';

class ChartDataInfoSection extends StatelessWidget {
  const ChartDataInfoSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        ChartItemInfo(
            title: "Design service", color: 0xff208CC8, percentage: 40.0),
        ChartItemInfo(
            title: "Design product", color: 0xff4EB7F2, percentage: 25.0),
        ChartItemInfo(
            title: "Product royalti", color: 0xff064061, percentage: 20.0),
        ChartItemInfo(title: "Other", color: 0xffE2DECD, percentage: 15.0),
      ],
    );
  }
}
