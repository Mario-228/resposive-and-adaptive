import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive_basics/home_feature/presentation/views/widgets/all_expenses.dart';
import 'package:responsive_and_adaptive_basics/home_feature/presentation/views/widgets/quick_invoice.dart';

class AllExpensesAndQuickInvoiceSection extends StatelessWidget {
  const AllExpensesAndQuickInvoiceSection({
    super.key,
    this.padding =
        const EdgeInsets.only(left: 32.0, bottom: 32.0, right: 12.0, top: 10.0),
    this.isMobile = false,
  });
  final bool isMobile;
  final EdgeInsets padding;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      padding: EdgeInsets.zero,
      child: Padding(
        padding: padding,
        child: Column(
          children: [
            AllExpenses(isMobile: isMobile),
            const SizedBox(height: 24.0),
            const QuickInvoice(),
          ],
        ),
      ),
    );
  }
}
