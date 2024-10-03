import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/styles.dart';

class DetailedIncomeCHart extends StatefulWidget {
  const DetailedIncomeCHart({super.key});

  @override
  State<DetailedIncomeCHart> createState() => _DetailedIncomeCHartState();
}

class _DetailedIncomeCHartState extends State<DetailedIncomeCHart> {
  int activeIndex = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(
        getPieChartData(),
      ),
    );
  }

  PieChartData getPieChartData() {
    return PieChartData(
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (p0, p1) {
          activeIndex = p1?.touchedSection?.touchedSectionIndex ?? -1;
          setState(() {});
        },
      ),
      sections: [
        PieChartSectionData(
          title: activeIndex == 0 ? 'Design service' : '40%',
          titlePositionPercentageOffset: activeIndex == 0 ? 1.5 : null,
          titleStyle: Styles.mediumStyle16(context)
              .copyWith(color: activeIndex == 0 ? null : Colors.white),
          value: 40,
          color: const Color(0xff208CC8),
          radius: activeIndex == 0 ? 50 : 40,
        ),
        PieChartSectionData(
          title: activeIndex == 1 ? 'Design product' : '25%',
          titlePositionPercentageOffset: activeIndex == 1 ? 2.5 : null,
          titleStyle: Styles.semiBoldStyle16(context)
              .copyWith(color: activeIndex == 1 ? null : Colors.white),
          value: 25,
          color: const Color(0xff4EB7F2),
          radius: activeIndex == 1 ? 50 : 40,
        ),
        PieChartSectionData(
          title: activeIndex == 2 ? 'Product royalti' : '20%',
          titlePositionPercentageOffset: activeIndex == 2 ? 1.5 : null,
          titleStyle: Styles.semiBoldStyle16(context)
              .copyWith(color: activeIndex == 2 ? null : Colors.white),
          value: 20,
          color: const Color(0xff064061),
          radius: activeIndex == 2 ? 50 : 40,
        ),
        PieChartSectionData(
          title: activeIndex == 3 ? 'Design service' : '22%',
          titlePositionPercentageOffset: activeIndex == 3 ? 1.9 : null,
          titleStyle: Styles.semiBoldStyle16(context)
              .copyWith(color: activeIndex == 3 ? null : Colors.white),
          value: 22,
          color: const Color(0xffE2DECD),
          radius: activeIndex == 3 ? 50 : 40,
        ),
      ],
    );
  }
}
