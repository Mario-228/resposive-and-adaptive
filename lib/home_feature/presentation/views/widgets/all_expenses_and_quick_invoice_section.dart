import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive_basics/home_feature/presentation/views/widgets/all_expenses.dart';
import 'package:responsive_and_adaptive_basics/home_feature/presentation/views/widgets/quick_invoice.dart';

class AllExpensesAndQuickInvoiceSection extends StatelessWidget {
  const AllExpensesAndQuickInvoiceSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      padding: EdgeInsets.zero,
      child: Padding(
        padding:
            EdgeInsets.only(left: 32.0, bottom: 32.0, right: 24.0, top: 10.0),
        child: Column(
          children: [
            AllExpenses(),
            SizedBox(height: 24.0),
            QuickInvoice(),
          ],
        ),
      ),
    );
  }
}
