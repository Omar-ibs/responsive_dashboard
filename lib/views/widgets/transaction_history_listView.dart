import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/widgets/transaction_history_item.dart';
import 'package:responsive_dashboard/views/widgets/transaction_model.dart';

class TransactionItemsListView extends StatelessWidget {
  const TransactionItemsListView({
    super.key,
  });

  static const List<TransactionModel> transactionItem = [
    TransactionModel(
        amount: r'$20,129',
        title: 'Cash Withdrawal',
        subtitle: '13 April, 2022',
        isActive: true),
    TransactionModel(
        amount: r'$2,000',
        title: 'Landing Page Project',
        subtitle: '13 April, 2022 at 3:30 PM',
        isActive: false),
    TransactionModel(
        amount: r'$20,129',
        title: 'Juni Mobile App project',
        subtitle: '13 April, 2022 at 3:30 PM',
        isActive: false),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: transactionItem
          .map((e) => TransactionItem(transactionModel: e))
          .toList(),
    );
  }
}
