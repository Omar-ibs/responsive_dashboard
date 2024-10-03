import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.backgroundColor,
      required this.textColor,
      required this.title});
  final Color? backgroundColor, textColor;
  final String title;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          elevation: 0.0,
          backgroundColor: backgroundColor ?? const Color(0xff4EB7F2),
        ),
        onPressed: () {},
        child: Text(
          title,
          style: Styles.semiBoldStyle18(context).copyWith(color: textColor),
        ),
      ),
    );
  }
}
