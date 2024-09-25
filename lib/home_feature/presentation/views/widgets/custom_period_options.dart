import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive_basics/core/utils/styles.dart';

class CustomPeriodOptions extends StatelessWidget {
  const CustomPeriodOptions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12.0),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
          side: const BorderSide(color: Color(0xffF1F1F1), width: 1.0),
        ),
      ),
      child: Row(
        children: [
          Text("Monthly", style: Styles.textStyleMedium16(context)),
          const SizedBox(width: 18.0),
          const Icon(
            Icons.keyboard_arrow_down,
            color: Color(0xff064061),
          ),
        ],
      ),
    );
  }
}
