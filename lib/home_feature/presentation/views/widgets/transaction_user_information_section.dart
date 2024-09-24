import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive_basics/home_feature/presentation/views/widgets/custom_transaction_card_item.dart';
import 'package:responsive_and_adaptive_basics/home_feature/presentation/views/widgets/transaction_history_header.dart';

class TransactionUserInformationSection extends StatelessWidget {
  const TransactionUserInformationSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        TransactionHistoryHeader(),
        SizedBox(height: 20.0),
        CustomTransactionCardItem(
          title: "Cash Withdrawal",
          subtitle: "13 Apr, 2022 ",
          balanceColor: 0xffF3735E,
        ),
        SizedBox(height: 12.0),
        CustomTransactionCardItem(
          title: "Landing Page project",
          subtitle: "13 Apr, 2022 at 3:30 PM ",
          balanceColor: 0xff7DD97B,
        ),
        SizedBox(height: 12.0),
        CustomTransactionCardItem(
          title: "Juni Mobile App project",
          subtitle: "13 Apr, 2022 at 3:30 PM ",
          balanceColor: 0xff7DD97B,
        ),
      ],
    );
  }
}
