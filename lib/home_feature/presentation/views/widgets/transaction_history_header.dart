import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive_basics/core/utils/styles.dart';

class TransactionHistoryHeader extends StatelessWidget {
  const TransactionHistoryHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("Transaction History", style: Styles.textStyleSemiBold20(context)),
        const Spacer(),
        Text(
          "See all",
          style: Styles.textStyleMedium16(context).copyWith(
            color: const Color(0xff4EB7F2),
          ),
        ),
      ],
    );
  }
}
