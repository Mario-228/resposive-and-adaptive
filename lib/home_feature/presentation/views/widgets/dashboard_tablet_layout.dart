import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive_basics/home_feature/presentation/views/widgets/all_expenses_and_quick_invoice_section.dart';
import 'package:responsive_and_adaptive_basics/home_feature/presentation/views/widgets/custom_drawer.dart';
import 'package:responsive_and_adaptive_basics/home_feature/presentation/views/widgets/user_credit_information.dart';

class DashboardTabletLayout extends StatelessWidget {
  const DashboardTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        Expanded(
            flex: 3,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  AllExpensesAndQuickInvoiceSection(),
                  UserCreditInformaton(
                    padding:
                        EdgeInsets.only(left: 30.0, top: 10.0, right: 32.0),
                  ),
                ],
              ),
            )),
      ],
    );
  }
}
