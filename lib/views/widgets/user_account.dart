import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/styles.dart';
import 'package:responsive_dashboard/views/widgets/user_account_model.dart';

class UserAccount extends StatelessWidget {
  const UserAccount({
    super.key,
    required this.user,
  });
  final UserInfoModel user;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.0,
      color: const Color(0xffFAFAFA),
      child: ListTile(
        leading: Image.asset(user.image),
        title: Text(user.name, style: Styles.semiBoldStyle16(context)),
        subtitle: Text(user.email, style: Styles.regularStyle12(context)),
      ),
    );
  }
}
