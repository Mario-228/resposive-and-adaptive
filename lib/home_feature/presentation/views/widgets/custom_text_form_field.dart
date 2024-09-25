import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive_basics/core/utils/styles.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hintText,
  });
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        contentPadding:
            const EdgeInsets.only(left: 20.0, top: 20.0, bottom: 20.0),
        fillColor: const Color(0xffFAFAFA),
        hintText: hintText,
        hintStyle: Styles.textStyleRegular16(context)
            .copyWith(color: const Color(0xffAAAAAA)),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
          borderSide: BorderSide.none,
        ),
        filled: true,
      ),
    );
  }
}
