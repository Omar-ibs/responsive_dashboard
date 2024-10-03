import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/widgets/cardSection.dart';
import 'package:responsive_dashboard/views/widgets/income_section.dart';

class THirdPart extends StatelessWidget {
  const THirdPart({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CardSection(),
        SizedBox(
          height: 24,
        ),
        IncomeSection(),
      ],
    );
  }
}
