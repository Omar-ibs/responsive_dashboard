import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/styles.dart';
import 'package:responsive_dashboard/views/widgets/transaction_model.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({super.key, required this.transactionModel});

  final TransactionModel transactionModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.0,
      color: const Color(0xffFAFAFA),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: ListTile(
        title: Text(
          transactionModel.title,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: Styles.semiBoldStyle16(context),
        ),
        subtitle: Text(
          transactionModel.subtitle,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: Styles.regularStyle16(context)
              .copyWith(color: const Color(0xffAAAAAA)),
        ),
        trailing: Text(
          transactionModel.amount,
          style: Styles.semiBoldStyle20(context).copyWith(
              color: transactionModel.isActive
                  ? const Color(0xffF3735E)
                  : const Color(0xff7DD97B)),
        ),
      ),
    );
  }
}
