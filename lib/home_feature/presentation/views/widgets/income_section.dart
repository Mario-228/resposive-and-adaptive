import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive_basics/home_feature/presentation/views/widgets/chart_data_info_section.dart';
import 'package:responsive_and_adaptive_basics/home_feature/presentation/views/widgets/custom_background_container.dart';
import 'package:responsive_and_adaptive_basics/home_feature/presentation/views/widgets/header_income.dart';
import 'package:responsive_and_adaptive_basics/home_feature/presentation/views/widgets/income_chart.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          HeaderIncome(),
          Row(
            children: [
              Expanded(
                child: AspectRatio(
                  aspectRatio: 1 / 1,
                  child: IncomeChart(),
                ),
              ),
              SizedBox(width: 20.0),
              Expanded(
                child: ChartDataInfoSection(),
              )
            ],
          ),
        ],
      ),
    );
  }
}
