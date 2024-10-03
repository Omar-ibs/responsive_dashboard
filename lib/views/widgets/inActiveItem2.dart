import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/styles.dart';
import 'package:responsive_dashboard/views/widgets/all_expenses_item_model.dart';
import 'package:responsive_dashboard/views/widgets/expenses_card_row.dart';

class InActiveItem2 extends StatelessWidget {
  const InActiveItem2({
    super.key,
    required this.item,
  });
  final AllExpensesItemModel item;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xfff1f1f1), width: 1),
        borderRadius: BorderRadius.circular(12),
        color: const Color(0xffffffff),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ExpensesCardRow(
            image: item.icon,
            imageColor: null,
            imageBackgroundColor: null,
          ),
          const SizedBox(
            height: 34,
          ),
          FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(item.title, style: Styles.mediumStyle16(context))),
          const SizedBox(
            height: 8,
          ),
          FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(item.date, style: Styles.regularStyle14(context))),
          const SizedBox(
            height: 16,
          ),
          FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(item.amount, style: Styles.semiBoldStyle24(context))),
        ],
      ),
    );
  }
}
