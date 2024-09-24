import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive_basics/core/functions/get_responsive_font_size.dart';
import 'package:responsive_and_adaptive_basics/core/utils/styles.dart';
import 'package:responsive_and_adaptive_basics/home_feature/presentation/views/widgets/custom_period_options.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "All Expenses",
          style: Styles.textStyleSemiBold20.copyWith(
            fontSize: GetResponsiveFontSize.getResponsiveTextSize(
                context: context, fontSize: 20.0),
          ),
        ),
        const CustomPeriodOptions(),
      ],
    );
  }
}
