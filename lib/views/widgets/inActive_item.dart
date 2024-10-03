import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/styles.dart';
import 'package:responsive_dashboard/views/widgets/drawer_item_modle.dart';

class InActiveItem extends StatelessWidget {
  const InActiveItem({
    super.key,
    required this.item,
  });

  final DrawerItemModel item;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        item.icon,
        color: const Color(0xff4EB7F2),
      ),
      title: Text(item.title, style: Styles.regularStyle16(context)),
    );
  }
}
