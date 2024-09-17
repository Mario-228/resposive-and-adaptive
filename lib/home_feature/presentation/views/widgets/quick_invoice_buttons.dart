import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive_basics/home_feature/presentation/views/widgets/custom_material_button.dart';

class QuickInvoiceButtons extends StatelessWidget {
  const QuickInvoiceButtons({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        CustomMaterialButton(
            buttonColor: 0xffFAFAFA,
            title: "Add more details",
            textColor: 0xff4EB7F2),
        SizedBox(width: 24.0),
        CustomMaterialButton(
            buttonColor: 0xff4EB7F2,
            title: "Send Money",
            textColor: 0xffFAFAFA),
      ],
    );
  }
}
