import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/widgets/custom_drawer.dart';
import 'package:responsive_dashboard/views/widgets/second_part.dart';
import 'package:responsive_dashboard/views/widgets/third_part.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(color: Colors.white, child: const CustomDrawer()),
        ),
        const SizedBox(
          width: 32,
        ),
        const Expanded(
          flex: 3,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 32,
                ),
                SecondPart(),
                SizedBox(
                  height: 24,
                ),
                THirdPart(),
              ],
            ),
          ),
        ),
        const SizedBox(
          width: 32,
        ),
      ],
    );
  }
}
