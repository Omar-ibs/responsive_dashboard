import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/views/widgets/drawer_item_modle.dart';
import 'package:responsive_dashboard/views/widgets/drawer_list_items.dart';
import 'package:responsive_dashboard/views/widgets/inActive_item.dart';
import 'package:responsive_dashboard/views/widgets/user_account.dart';
import 'package:responsive_dashboard/views/widgets/user_account_model.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * .7,
      color: Colors.white,
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20.0,
                ),
                UserAccount(
                  user: UserInfoModel(
                      image: Assets.imagesAvatar,
                      email: 'demo@gmail.com',
                      name: 'Lekan Okeowo'),
                ),
                SizedBox(
                  height: 8,
                ),
              ],
            ),
          ),
          const DrawerListItems(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Container(
              color: Colors.white,
              child: const Column(
                children: [
                  Expanded(
                      child: SizedBox(
                    height: 20,
                  )),
                  InActiveItem(
                    item: DrawerItemModel(
                        title: 'Logout account', icon: Icons.logout),
                  ),
                  InActiveItem(
                    item: DrawerItemModel(
                        title: 'Settings', icon: Icons.settings_outlined),
                  ),
                  SizedBox(
                    height: 20.0,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
