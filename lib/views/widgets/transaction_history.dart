import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/styles.dart';
import 'package:responsive_dashboard/views/widgets/transaction_history_listView.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Transaction History',
              style: Styles.semiBoldStyle20(context),
            ),
            Text(
              'see all',
              style: Styles.mediumStyle16(context)
                  .copyWith(color: const Color(0xff4EB7F2)),
            ),
          ],
        ),
        const SizedBox(
          height: 20.0,
        ),
        Text(
          '13 April, 2022',
          style: Styles.mediumStyle16(context).copyWith(
            color: Color(0xffAAAAAA),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        const TransactionItemsListView(),
      ],
    );
  }
}
