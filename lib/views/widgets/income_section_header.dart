import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/styles.dart';
import 'package:responsive_dashboard/views/widgets/monthly_button.dart';

class IncomeSectionHeader extends StatelessWidget {
  const IncomeSectionHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Income',
          style: Styles.semiBoldStyle20(context),
        ),
        const MonthlyButton(),
      ],
    );
  }
}
