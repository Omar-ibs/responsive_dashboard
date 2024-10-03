import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/utils/styles.dart';
import 'package:responsive_dashboard/views/widgets/user_account.dart';
import 'package:responsive_dashboard/views/widgets/user_account_model.dart';

class LatestTransactions extends StatelessWidget {
  const LatestTransactions({super.key});
  static const users = [
    UserInfoModel(
        image: Assets.imagesUserimage1,
        email: 'Madraniadi20@gmail',
        name: 'Madrani Andi'),
    UserInfoModel(
        image: Assets.imagesUserimage2,
        email: 'Josh Nunito@gmail.com',
        name: 'Josua Nunito'),
    UserInfoModel(
        image: Assets.imagesAvatar,
        email: 'Josh Nunito@gmail.com',
        name: 'Josua Nunito'),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Latest Transactions',
          style: Styles.mediumStyle16(context),
        ),
        const SizedBox(
          height: 12,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: users
                .map((e) => IntrinsicWidth(
                        child: UserAccount(
                      user: e,
                    )))
                .toList(),
          ),
        ),
      ],
    );
  }
}
