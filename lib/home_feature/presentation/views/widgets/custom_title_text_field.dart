import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive_basics/core/utils/styles.dart';
import 'package:responsive_and_adaptive_basics/home_feature/presentation/views/widgets/custom_text_form_field.dart';

class CustomTitleTextField extends StatelessWidget {
  const CustomTitleTextField(
      {super.key, required this.hintText, required this.title});
  final String hintText, title;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: Styles.textStyleMedium16(context)),
        const SizedBox(height: 12.0),
        CustomTextFormField(
          hintText: hintText,
        ),
      ],
    );
  }
}
