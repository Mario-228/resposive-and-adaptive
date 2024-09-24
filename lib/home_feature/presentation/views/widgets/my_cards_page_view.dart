import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive_basics/home_feature/presentation/views/widgets/my_card.dart';

class MyCardsPageView extends StatelessWidget {
  const MyCardsPageView({super.key});
  static final PageController onboardingController = PageController();
  @override
  Widget build(BuildContext context) {
    //this solution for page view if you don't know the height of page view
    return ExpandablePageView(
      controller: onboardingController,
      physics: const BouncingScrollPhysics(),
      children: List.generate(
        3,
        (index) => const Padding(
          padding: EdgeInsets.only(right: 10.0),
          child: MyCard(),
        ),
      ),
    );

    //this solution for page view if you know the height of page view & this solution worked well because we wrapped it by => CustomBackgroundContainer()
    // return PageView.builder(
    //   controller: onboardingController,
    //   physics: const BouncingScrollPhysics(),
    //   itemBuilder: (context, index) => const Padding(
    //     padding: EdgeInsets.only(right: 10.0),
    //     child: MyCard(),
    //   ),
    //   itemCount: 3,
    // );
  }
}
