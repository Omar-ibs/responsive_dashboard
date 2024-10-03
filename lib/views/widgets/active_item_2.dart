import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/styles.dart';
import 'package:responsive_dashboard/views/widgets/all_expenses_item_model.dart';
import 'package:responsive_dashboard/views/widgets/expenses_card_row.dart';

class ActiveItem2 extends StatelessWidget {
  const ActiveItem2({super.key, required this.item});
  final AllExpensesItemModel item;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: const Color(0xff4EB7F2),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ExpensesCardRow(
            image: item.icon,
            imageColor: Colors.white,
            imageBackgroundColor: Colors.white.withOpacity(0.10000000149011612),
          ),
          const SizedBox(
            height: 34,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              item.title,
              style: Styles.semiBoldStyle16(context).copyWith(
                color: const Color(0xffFFFFFF),
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              item.date,
              style: Styles.regularStyle14(context).copyWith(
                color: const Color(0xffFAFAFA),
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              item.amount,
              style: Styles.semiBoldStyle24(context)
                  .copyWith(color: const Color(0xffffffff)),
            ),
          ),
        ],
      ),
    );
  }
}
