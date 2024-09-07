import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive_basics/core/util/functions/navigate_to.dart';
import 'package:responsive_and_adaptive_basics/views/widgets/layout_builder_example/show_information.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) => GestureDetector(
          onTap: () => navigateTo(
            context,
            ShowInforamtion(
              number: (index + 1).toString(),
            ),
          ),
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            color: Colors.amber,
            height: 50.0,
            child: Text(
              "${index + 1}",
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 30),
            ),
          ),
        ),
        separatorBuilder: (context, index) => const SizedBox(height: 10),
        itemCount: 20,
      ),
    );
  }
}
