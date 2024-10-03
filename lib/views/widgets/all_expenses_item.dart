import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/widgets/active_item_2.dart';
import 'package:responsive_dashboard/views/widgets/all_expenses_item_model.dart';
import 'package:responsive_dashboard/views/widgets/inActiveItem2.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem(
      {super.key, required this.item, required this.isSelected});
  final AllExpensesItemModel item;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return AnimatedCrossFade(
      firstCurve: Curves.bounceIn,
      firstChild:
          isSelected ? ActiveItem2(item: item) : InActiveItem2(item: item),
      secondChild: InActiveItem2(item: item),
      crossFadeState: CrossFadeState.showFirst,
      duration: const Duration(milliseconds: 50),
    );
  }
}
