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
    return widget.isMobile
        ? SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: AllExpensesItems.items.asMap().entries.map((e) {
                return SizedBox(
                  width: 180.0,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: (e.key == 1) ? 12.0 : 0.0),
                    child: GestureDetector(
                      onTap: () {
                        if (e.key != AllExpensesItems.selectedIndex) {
                          setState(() {
                            AllExpensesItems.selectedIndex = e.key;
                          });
                        }
                      },
                      child: AllExpensesItem(
                        isSelected: e.key == AllExpensesItems.selectedIndex,
                        item: e.value,
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
          )
        : Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: AllExpensesItems.items.asMap().entries.map((e) {
              return Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: (e.key == 1) ? 12.0 : 0.0),
                  child: GestureDetector(
                    onTap: () {
                      if (e.key != AllExpensesItems.selectedIndex) {
                        setState(() {
                          AllExpensesItems.selectedIndex = e.key;
                        });
                      }
                    },
                    child: AllExpensesItem(
                      isSelected: e.key == AllExpensesItems.selectedIndex,
                      item: e.value,
                    ),
                  ),
                ),
              );
            }).toList());
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