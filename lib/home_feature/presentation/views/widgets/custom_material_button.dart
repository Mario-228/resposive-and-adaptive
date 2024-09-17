import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive_basics/core/utils/styles.dart';

class CustomMaterialButton extends StatelessWidget {
  const CustomMaterialButton({
    super.key,
    required this.buttonColor,
    required this.title,
    required this.textColor,
  });

  final int buttonColor;
  final String title;
  final int textColor;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 62.0,
        child: MaterialButton(
          padding: const EdgeInsets.all(20.0),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
          elevation: 0.0,
          onPressed: () {},
          color: Color(buttonColor),
          child: Text(title,
              style:
                  Styles.textStyleSemiBold16.copyWith(color: Color(textColor))),
        ),
      ),
    );
  }
}
