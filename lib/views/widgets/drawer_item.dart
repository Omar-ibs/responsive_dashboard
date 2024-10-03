import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/widgets/active_item.dart';
import 'package:responsive_dashboard/views/widgets/drawer_item_modle.dart';
import 'package:responsive_dashboard/views/widgets/inActive_item.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({
    super.key,
    required this.isActive,
    required this.item,
  });
  final bool isActive;
  final DrawerItemModel item;
  @override
  Widget build(BuildContext context) {
    return isActive ? ActiveItem(item: item) : InActiveItem(item: item);
  }
}
