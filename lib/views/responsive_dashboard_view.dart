import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/widgets/AdaptiveLayout.dart';
import 'package:responsive_dashboard/views/widgets/custom_drawer.dart';
import 'package:responsive_dashboard/views/widgets/desktop_layout.dart';
import 'package:responsive_dashboard/views/widgets/mobile_layout.dart';
import 'package:responsive_dashboard/views/widgets/tablet_layout.dart';

class ResponsiveDashboardView extends StatefulWidget {
  const ResponsiveDashboardView({super.key});

  @override
  State<ResponsiveDashboardView> createState() =>
      _ResponsiveDashboardViewState();
}

class _ResponsiveDashboardViewState extends State<ResponsiveDashboardView> {
  GlobalKey<ScaffoldState> scaffoldState = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //endDrawer: const Icon(Icons.close_rounded),

      key: scaffoldState,
      drawer:
          MediaQuery.sizeOf(context).width < 800 ? const CustomDrawer() : null,
      appBar: MediaQuery.sizeOf(context).width < 800
          ? AppBar(
              elevation: 0.0,
              leading: GestureDetector(
                  onTap: () {
                    scaffoldState.currentState!.openDrawer();
                  },
                  child: const Icon(Icons.menu)),
              backgroundColor: const Color(0xfff7f9fa),
            )
          : null,

      backgroundColor: const Color(0xfff7f9fa),
      body: AdaptiveLayout(
        mobileLayout: (context) => const MobileLayout(),
        tabletLayout: (context) => const TabletLayout(),
        desktopLayout: (context) => const DesktopLayout(),
      ), //AdaptiveLayout(mobileLayout: mobileLayout, tabletLayout: tabletLayout, desktopLayout: desktopLayout) Expanded(child: CustomDrawer()),
    );
  }
}
