import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/widgets/custom_background_container.dart';
import 'package:responsive_dashboard/views/widgets/income_section_details_and_chart.dart';
import 'package:responsive_dashboard/views/widgets/income_section_header.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      padding: 20.0,
      child: Column(
        children: [
          IncomeSectionHeader(),
          IncomeSectionDetailsAndChart(),
        ],
      ),
    );
  }
}
