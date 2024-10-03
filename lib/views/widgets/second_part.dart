import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/widgets/all_expenses.dart';
import 'package:responsive_dashboard/views/widgets/quick_invoice.dart';

class SecondPart extends StatelessWidget {
  const SecondPart({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        AllExpenses(),
        SizedBox(
          height: 20.0,
        ),
        QuickInvoice(),
        SizedBox(
          height: 40,
        ),
      ],
    );
  }
}
