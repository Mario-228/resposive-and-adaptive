import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive_basics/core/utils/styles.dart';
import 'package:responsive_and_adaptive_basics/home_feature/presentation/views/widgets/latest_transaction_list_view.dart';

class LatestTransaction extends StatelessWidget {
  const LatestTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text("Latest Transaction",
            style: Styles.textStyleMedium16(context),
            textAlign: TextAlign.start),
        const SizedBox(height: 16.0),
        const LatestTransactionListView(),
      ],
    );
  }
}
