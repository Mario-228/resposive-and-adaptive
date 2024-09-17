import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive_basics/core/utils/styles.dart';
import 'package:responsive_and_adaptive_basics/home_feature/data/model/all_expenses_item_model.dart';
import 'package:responsive_and_adaptive_basics/home_feature/presentation/views/widgets/all_expenses_item_header.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem({
    super.key,
    required this.item,
    required this.isSelected,
  });
  final bool isSelected;
  final AllExpensesItemModel item;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
      decoration: ShapeDecoration(
        color: isSelected ? const Color(0xff4EB7F2) : Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
          side: const BorderSide(color: Color(0xffF1F1F1), width: 1.0),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            isSelected: isSelected,
            image: item.image,
          ),
          const SizedBox(height: 34.0),
          Text(
            item.title,
            style: isSelected
                ? Styles.textStyleSemiBold16.copyWith(color: Colors.white)
                : Styles.textStyleSemiBold16,
          ),
          const SizedBox(height: 8.0),
          Text(
            item.date,
            style: isSelected
                ? Styles.textStyleRegular14.copyWith(color: Colors.white)
                : Styles.textStyleRegular14,
          ),
          const SizedBox(height: 16.0),
          Text(
            item.amount,
            style: isSelected
                ? Styles.textStyle24.copyWith(color: Colors.white)
                : Styles.textStyle24,
          ),
        ],
      ),
    );
  }
}
