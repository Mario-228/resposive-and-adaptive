import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_and_adaptive_basics/home_feature/presentation/views/widgets/income_section.dart';
import 'package:responsive_and_adaptive_basics/home_feature/presentation/views/widgets/my_cards_and_transaction_history_section.dart';

class UserCreditInformaton extends StatelessWidget {
  const UserCreditInformaton({
    super.key,
    this.padding = const EdgeInsets.only(left: 12.0, top: 10.0, right: 32.0),
    this.isScrollable = true,
  });
  final EdgeInsets padding;
  final bool isScrollable;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: isScrollable
          ? const BouncingScrollPhysics()
          : const NeverScrollableScrollPhysics(),
      child: Padding(
        padding: padding,
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            MyCardsAndTransactionHistorySection(),
            SizedBox(height: 24.0),
            IncomeSection(),
            SizedBox(height: 32.0),
          ],
        ),
      ),
    );
  }
}
