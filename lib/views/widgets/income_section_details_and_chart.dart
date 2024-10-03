import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/widgets/detailed_income_chart.dart';
import 'package:responsive_dashboard/views/widgets/income_chart.dart';
import 'package:responsive_dashboard/views/widgets/income_section_details.dart';
import 'package:responsive_dashboard/views/widgets/income_section_model.dart';

class IncomeSectionDetailsAndChart extends StatelessWidget {
  const IncomeSectionDetailsAndChart({
    super.key,
  });
  static const List<IncomeSectionModel> detailedItems = [
    IncomeSectionModel(
      color: Color(0xff208CC8),
      title: 'Design service',
      percentage: '40%',
    ),
    IncomeSectionModel(
      color: Color(0xff4EB7F2),
      title: 'Design product',
      percentage: '25%',
    ),
    IncomeSectionModel(
      color: Color(0xff064061),
      title: 'Product royalti',
      percentage: '20%',
    ),
    IncomeSectionModel(
      color: Color(0xffE2DECD),
      title: 'Other',
      percentage: '10%',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return width >= 1300 && width <= 1750
        ? const Padding(
            padding: EdgeInsets.all(20),
            child: Expanded(child: DetailedIncomeCHart()),
          )
        : Row(
            children: [
              const Expanded(
                child: IncomeChart(),
              ),
              const SizedBox(
                width: 16,
              ),
              Expanded(
                flex: 2,
                child: Column(
                  children: detailedItems
                      .map(
                        (e) => IncomeSectionDetails(detailedItem: e),
                      )
                      .toList(),
                ),
              ),
            ],
          );
  }
}
