import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive_basics/home_feature/presentation/views/widgets/all_expenses_and_quick_invoice_section.dart';
import 'package:responsive_and_adaptive_basics/home_feature/presentation/views/widgets/custom_drawer.dart';
import 'package:responsive_and_adaptive_basics/home_feature/presentation/views/widgets/user_credit_information.dart';

class DashboardMobileLayout extends StatelessWidget {
  const DashboardMobileLayout({super.key});
  static final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer:
          const SafeArea(bottom: false, child: Drawer(child: CustomDrawer())),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            scaffoldKey.currentState!.openDrawer();
          },
          icon: const Icon(Icons.menu),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            AllExpensesAndQuickInvoiceSection(
              isMobile: (MediaQuery.of(context).size.width < 600),
              padding: const EdgeInsets.all(10.0),
            ),
            const UserCreditInformaton(
              isScrollable: false,
              padding: EdgeInsets.all(10.0),
            )
          ],
        ),
      ),
    );
  }
}
