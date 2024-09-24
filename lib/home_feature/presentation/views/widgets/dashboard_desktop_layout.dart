import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive_basics/home_feature/presentation/views/widgets/all_expenses_and_quick_invoice_section.dart';
import 'package:responsive_and_adaptive_basics/home_feature/presentation/views/widgets/custom_drawer.dart';
import 'package:responsive_and_adaptive_basics/home_feature/presentation/views/widgets/user_credit_information.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          flex: 2,
          child: CustomDrawer(),
        ),
        Expanded(
          flex: 4,
          child: AllExpensesAndQuickInvoiceSection(),
        ),
        Expanded(
          flex: 3,
          child: UserCreditInformaton(),
        ),
      ],
    );
  }
}
