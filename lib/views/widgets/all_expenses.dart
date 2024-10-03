import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/widgets/all_expenses_items_list.dart';
import 'package:responsive_dashboard/views/widgets/all_expenses_row.dart';
import 'package:responsive_dashboard/views/widgets/custom_background_container.dart';
import 'package:responsive_dashboard/views/widgets/monthly_button.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [
          AllExpensesRow(
            title: 'All Expenses',
            icon: MonthlyButton(),
          ),
          SizedBox(
            height: 16,
          ),
          AllExpensesItemList()
        ],
      ),
    );
  }
}
