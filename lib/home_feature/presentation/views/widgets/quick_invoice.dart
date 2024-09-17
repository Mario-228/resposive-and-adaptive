import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive_basics/home_feature/presentation/views/widgets/custom_background_container.dart';
import 'package:responsive_and_adaptive_basics/home_feature/presentation/views/widgets/latest_transaction.dart';
import 'package:responsive_and_adaptive_basics/home_feature/presentation/views/widgets/quick_invoice_buttons.dart';
import 'package:responsive_and_adaptive_basics/home_feature/presentation/views/widgets/quick_invoice_header.dart';
import 'package:responsive_and_adaptive_basics/home_feature/presentation/views/widgets/title_text_form_field_section.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          QuickInvoiceHeader(),
          SizedBox(height: 24.0),
          LatestTransaction(),
          Divider(height: 48.0, color: Color(0xffF1F1F1)),
          TitleTextFormFieldSection(),
          SizedBox(height: 24.0),
          QuickInvoiceButtons()
        ],
      ),
    );
  }
}
