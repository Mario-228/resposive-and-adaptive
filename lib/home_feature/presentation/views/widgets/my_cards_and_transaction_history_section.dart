import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive_basics/home_feature/presentation/views/widgets/custom_background_container.dart';
import 'package:responsive_and_adaptive_basics/home_feature/presentation/views/widgets/custom_dots_indicator.dart';
import 'package:responsive_and_adaptive_basics/home_feature/presentation/views/widgets/my_cards_page_view.dart';
import 'package:responsive_and_adaptive_basics/home_feature/presentation/views/widgets/transaction_user_information_section.dart';

class MyCardsAndTransactionHistorySection extends StatelessWidget {
  const MyCardsAndTransactionHistorySection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      padding: 10.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const MyCardsPageView(),
          const SizedBox(height: 20.0),
          CustomDotsIndicator(
              onboardingController: MyCardsPageView.onboardingController,
              length: 3),
          const SizedBox(height: 20.0),
          const TransactionUserInformationSection(),
        ],
      ),
    );
  }
}
