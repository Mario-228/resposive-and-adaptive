import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive_basics/core/utils/app_images.dart';
import 'package:responsive_and_adaptive_basics/core/utils/styles.dart';
import 'package:responsive_and_adaptive_basics/home_feature/presentation/views/widgets/my_card_header.dart';
import 'package:responsive_and_adaptive_basics/home_feature/presentation/views/widgets/my_card_info.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("My Card", style: Styles.textStyleSemiBold20),
        const SizedBox(height: 20.0),
        AspectRatio(
          aspectRatio: 420 / 215,
          child: Container(
            decoration: decorationMyCardContainer(),
            child: Column(
              //to make the children of the column have symmetric space
              mainAxisAlignment: MainAxisAlignment.values[4],
              children: const [
                // SizedBox(height: 20.0),
                MyCardHeader(),
                // Spacer(),
                MyCardInfo(),
                // SizedBox(height: 20.0),
              ],
            ),
          ),
        ),
      ],
    );
  }

  ShapeDecoration decorationMyCardContainer() {
    return ShapeDecoration(
      image: const DecorationImage(image: AssetImage(AppImages.imagesCardItem)),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
      color: const Color(0xff4EB7F2),
    );
  }
}
