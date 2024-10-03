import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/widgets/drawer_item.dart';
import 'package:responsive_dashboard/views/widgets/drawer_item_modle.dart';

class DrawerListItems extends StatefulWidget {
  const DrawerListItems({super.key});

  @override
  State<DrawerListItems> createState() => _DrawerListItemsState();
}

class _DrawerListItemsState extends State<DrawerListItems> {
  int activeIndex = 0;

  final List<DrawerItemModel> items = const [
    DrawerItemModel(
      icon: Icons.dashboard_outlined,
      title: 'Dashboard',
    ),
    DrawerItemModel(
      icon: Icons.move_up_rounded,
      title: 'Transactions',
    ),
    DrawerItemModel(
      icon: Icons.pie_chart_outline,
      title: 'Statistics',
    ),
    DrawerItemModel(
      icon: Icons.wallet_rounded,
      title: 'Wallet',
    ),
    DrawerItemModel(
      icon: Icons.bar_chart_outlined,
      title: 'My Investments',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return GestureDetector(
              onTap: () {
                if (activeIndex != index) {
                  setState(() {
                    activeIndex = index;
                  });
                }
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: DrawerItem(
                  item: items[index],
                  isActive: activeIndex == index,
                ),
              ));
        });
  }
}
