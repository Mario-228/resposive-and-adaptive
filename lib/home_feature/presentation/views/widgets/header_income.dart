import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive_basics/core/utils/styles.dart';
import 'package:responsive_and_adaptive_basics/home_feature/presentation/views/widgets/custom_period_options.dart';

class HeaderIncome extends StatelessWidget {
  const HeaderIncome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("Income", style: Styles.textStyleSemiBold20(context)),
        const Spacer(),
        const CustomPeriodOptions()
      ],
    );
  }
}
