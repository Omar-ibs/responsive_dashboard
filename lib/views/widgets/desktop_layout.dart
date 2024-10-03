import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/widgets/custom_drawer.dart';
import 'package:responsive_dashboard/views/widgets/second_part.dart';
import 'package:responsive_dashboard/views/widgets/third_part.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

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
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Padding(
                          padding: EdgeInsets.only(top: 40.0),
                          child: SecondPart()),
                    ),
                    SizedBox(
                      width: 32,
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(top: 40.0),
                        child: THirdPart(),
                      ),
                    ),
                    SizedBox(
                      width: 32,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
