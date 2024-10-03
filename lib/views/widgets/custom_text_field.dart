import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint});
  final String hint;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        fillColor: const Color(0xffFAFAFA),
        filled: true,
        hintText: hint,
        hintStyle: Styles.regularStyle16(context)
            .copyWith(color: const Color(0xffAAAAAA)),
        focusedBorder: buildBorder(),
        enabledBorder: buildBorder(),
        border: buildBorder(),
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(
        color: Color(0xffFAFAFA),
      ),
    );
  }
}
