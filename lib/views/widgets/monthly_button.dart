import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/styles.dart';

class MonthlyButton extends StatelessWidget {
  const MonthlyButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xffAAAAAA), width: 0.5),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Monthly',
            style: Styles.mediumStyle16(context),
          ),
          const SizedBox(
            width: 5,
          ),
          Transform.rotate(
            angle: -1.57079633,
            child: const Icon(
              Icons.arrow_back_ios_new_outlined,
              color: Color(0xff064061),
            ),
          ),
        ],
      ),
    );
  }
}
