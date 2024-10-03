import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/widgets/second_part.dart';
import 'package:responsive_dashboard/views/widgets/third_part.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          SecondPart(),
          SizedBox(
            height: 24,
          ),
          THirdPart(),
        ],
      ),
    );
  }
}
