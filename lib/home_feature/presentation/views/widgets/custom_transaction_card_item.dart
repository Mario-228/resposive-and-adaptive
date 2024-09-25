import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive_basics/core/utils/styles.dart';

class CustomTransactionCardItem extends StatelessWidget {
  const CustomTransactionCardItem({
    super.key,
    required this.title,
    required this.subtitle,
    required this.balanceColor,
  });
  final String title, subtitle;
  final int balanceColor;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.0,
      color: const Color(0xffFAFAFA),
      shape: InputBorder.none,
      child: ListTile(
        contentPadding: const EdgeInsets.all(10.0),
        title: Text(
          title,
          style: Styles.textStyleSemiBold16(context),
        ),
        subtitle: Text(
          subtitle,
          style: Styles.textStyleRegular16(context)
              .copyWith(color: const Color(0xffAAAAAA)),
        ),
        trailing: Text(
          "\$20,129",
          style: Styles.textStyleSemiBold20(context).copyWith(
            color: Color(balanceColor),
          ),
        ),
      ),
    );
  }
}
