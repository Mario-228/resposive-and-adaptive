import 'package:flutter/material.dart';
import 'package:responsive_and_adaptive_basics/core/utils/app_images.dart';
import 'package:responsive_and_adaptive_basics/home_feature/data/model/all_expenses_item_model.dart';
import 'package:responsive_and_adaptive_basics/home_feature/presentation/views/widgets/all_expenses_item.dart';

class AllExpensesItems extends StatefulWidget {
  const AllExpensesItems({
    super.key,
    this.isMobile = false,
  });
  final bool isMobile;
  static int selectedIndex = -1;
  static const List<AllExpensesItemModel> items = [
    AllExpensesItemModel(
      image: AppImages.imagesBalance,
      title: "Balance",
      amount: "\$20,129",
      date: "April 2022",
    ),
    AllExpensesItemModel(
      image: AppImages.imagesIncome,
      title: "Income",
      amount: "\$20,129",
      date: "April 2022",
    ),
    AllExpensesItemModel(
      image: AppImages.imagesExpenses,
      title: "Expenses",
      amount: "\$20,129",
      date: "April 2022",
    ),
  ];

  @override
  State<AllExpensesItems> createState() => _AllExpensesItemsState();
}

class _AllExpensesItemsState extends State<AllExpensesItems> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () => selectedItemIndexExpenses(0),
            child: AllExpensesItem(
              isSelected: 0 == AllExpensesItems.selectedIndex,
              item: AllExpensesItems.items[0],
            ),
          ),
        ),
        const SizedBox(width: 10.0),
        Expanded(
          child: GestureDetector(
            onTap: () => selectedItemIndexExpenses(1),
            child: AllExpensesItem(
              isSelected: 1 == AllExpensesItems.selectedIndex,
              item: AllExpensesItems.items[1],
            ),
          ),
        ),
        const SizedBox(width: 10.0),
        Expanded(
          child: GestureDetector(
            onTap: () => selectedItemIndexExpenses(2),
            child: AllExpensesItem(
              isSelected: 2 == AllExpensesItems.selectedIndex,
              item: AllExpensesItems.items[2],
            ),
          ),
        ),
      ],
    );
  }

  void selectedItemIndexExpenses(int index) {
    if (index != AllExpensesItems.selectedIndex) {
      setState(() {
        AllExpensesItems.selectedIndex = index;
      });
    }
  }
}


             // Expanded(
              //   child: AllExpensesItem(
              //     item: items[0],
              //   ),
              // ),
              // const SizedBox(
              //   width: 12.0,
              // ),
              // Expanded(
              //   child: AllExpensesItem(
              //     item: items[1],
              //   ),
              // ),
              // const SizedBox(
              //   width: 12.0,
              // ),
              // Expanded(
              //   child: AllExpensesItem(
              //     item: items[2],
              //   ),
              // ),