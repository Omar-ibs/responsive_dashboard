import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/styles.dart';

class AllExpensesRow extends StatelessWidget {
  const AllExpensesRow({
    super.key,
    required this.title,
    required this.icon,
  });
  final String title;
  final Widget icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title, style: Styles.semiBoldStyle20(context)),
        const Spacer(),
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: icon,
        ),
      ],
    );
  }
}
