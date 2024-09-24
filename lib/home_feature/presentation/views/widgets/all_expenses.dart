import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive_basics/home_feature/presentation/views/widgets/all_expenses_header.dart';
import 'package:responsive_and_adaptive_basics/home_feature/presentation/views/widgets/all_expenses_items.dart';
import 'package:responsive_and_adaptive_basics/home_feature/presentation/views/widgets/custom_background_container.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({
    super.key,
    this.isMobile = false,
  });
  final bool isMobile;
  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: Column(
        children: [
          const AllExpensesHeader(),
          const SizedBox(height: 16.0),
          AllExpensesItems(isMobile: isMobile),
          const SizedBox(height: 8.0),
        ],
      ),
    );
  }
}
