import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/styles.dart';
import 'package:responsive_dashboard/views/widgets/income_section_model.dart';

class IncomeSectionDetails extends StatelessWidget {
  const IncomeSectionDetails({
    super.key,
    required this.detailedItem,
  });
  final IncomeSectionModel detailedItem;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Container(
        height: 12,
        width: 12,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12), color: detailedItem.color),
      ),
      title: Text(
        detailedItem.title,
        style: Styles.regularStyle16(context),
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      trailing: Text(
        detailedItem.percentage,
        style: Styles.mediumStyle16(context).copyWith(
          color: const Color(0xff208CC8),
        ),
      ),
    );
    // Row(
    //   children: [
    //     Container(
    //       height: 12,
    //       width: 12,
    //       decoration: BoxDecoration(
    //           borderRadius: BorderRadius.circular(12),
    //           color: detailedItem.color),
    //     ),
    //     const SizedBox(
    //       width: 12,
    //     ),
    //     Text(
    //       detailedItem.title,
    //       style: Styles.regularStyle16,
    //     ),
    //     const SizedBox(
    //       width: 20.0,
    //     ),
    //     Text(
    //       detailedItem.percentage,
    //       style: Styles.mediumStyle16.copyWith(
    //         color: const Color(0xff208CC8),
    //       ),
    //     ),
    //   ],
    // );
  }
}
