import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive_basics/home_feature/presentation/views/widgets/custom_title_text_field.dart';

class TitleTextFormFieldSection extends StatelessWidget {
  const TitleTextFormFieldSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
              child: CustomTitleTextField(
                hintText: "Type customer name",
                title: "Customer name",
              ),
            ),
            SizedBox(width: 12.0),
            Expanded(
              child: CustomTitleTextField(
                hintText: "Type customer email",
                title: "Customer Email",
              ),
            ),
          ],
        ),
        SizedBox(
          height: 24.0,
        ),
        Row(
          children: [
            Expanded(
              child: CustomTitleTextField(
                hintText: "Type customer name",
                title: "Item name",
              ),
            ),
            SizedBox(width: 12.0),
            Expanded(
              child: CustomTitleTextField(
                hintText: "USD",
                title: "Item mount",
              ),
            ),
          ],
        ),
      ],
    );
  }
}
