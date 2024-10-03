import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/widgets/all_expenses_row.dart';
import 'package:responsive_dashboard/views/widgets/custom_background_container.dart';
import 'package:responsive_dashboard/views/widgets/latest_transactions.dart';
import 'package:responsive_dashboard/views/widgets/quick_invoice_form.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      padding: 24.0,
      child: Column(
        children: [
          AllExpensesRow(
            title: 'Quick Invoice',
            icon: FloatingActionButton(
              shape: const CircleBorder(),
              elevation: 0,
              onPressed: () {},
              backgroundColor: const Color(0xffFAFAFA),
              child: const Icon(
                Icons.add,
                color: Color(0xff4EB7F2),
              ),
            ),
          ),
          const LatestTransactions(),
          const Divider(
            height: 48,
            color: Color(0xffF1F1F1),
            thickness: 1,
          ),
          const QuickInvoiceForm(),
        ],
      ),
    );
  }
}
