import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive_basics/core/utils/styles.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Quick invoice",
          style: Styles.textStyleSemiBold20(context),
        ),
        const Spacer(),
        const CircleAvatar(
          backgroundColor: Color(0xffFAFAFA),
          child: Icon(Icons.add, color: Color(0xff4EB7F2)),
        ),
      ],
    );
  }
}
