import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/views/widgets/all_expenses_item.dart';
import 'package:responsive_dashboard/views/widgets/all_expenses_item_model.dart';

class AllExpensesItemList extends StatefulWidget {
  const AllExpensesItemList({super.key});

  @override
  State<AllExpensesItemList> createState() => _AllExpensesItemListState();
}

class _AllExpensesItemListState extends State<AllExpensesItemList> {
  final List<AllExpensesItemModel> items = const [
    AllExpensesItemModel(
        title: 'Balance',
        date: 'April 2024',
        amount: r'$20,129',
        icon: Assets.imagesItemIcon1),
    AllExpensesItemModel(
        title: 'Expenses',
        date: 'April 2024',
        amount: r'$20,129',
        icon: Assets.imagesItemIcon2),
    AllExpensesItemModel(
        title: 'Balance',
        date: 'April 2024',
        amount: r'$20,129',
        icon: Assets.imagesItemIcon3),
  ];

  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                currentIndex = 0;
              });
            },
            child: AllExpensesItem(
              item: items[currentIndex],
              isSelected: currentIndex == 0,
            ),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                currentIndex = 1;
              });
            },
            child: AllExpensesItem(
              item: items[currentIndex],
              isSelected: currentIndex == 1,
            ),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                currentIndex = 2;
              });
            },
            child: AllExpensesItem(
              item: items[currentIndex],
              isSelected: currentIndex == 2,
            ),
          ),
        ),
      ],
    );
  }
}
