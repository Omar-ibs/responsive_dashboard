import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/widgets/custom_button.dart';
import 'package:responsive_dashboard/views/widgets/title_text_field.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TitleTextField(
                hint: 'Type customer name',
                title: 'Customer name',
              ),
            ),
            SizedBox(
              width: 24,
            ),
            Expanded(
              child: TitleTextField(
                hint: 'Type customer email',
                title: 'Customer email',
              ),
            ),
          ],
        ),
        SizedBox(
          height: 24.0,
        ),
        Row(
          children: [
            Expanded(
              child: TitleTextField(
                hint: 'Type item name',
                title: 'Item name',
              ),
            ),
            SizedBox(
              width: 24,
            ),
            Expanded(
              child: TitleTextField(
                hint: 'USD',
                title: 'Item mount',
              ),
            ),
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Expanded(
              child: CustomButton(
                backgroundColor: Colors.transparent,
                textColor: Color(0xff4EB7F2),
                title: 'Add more details',
              ),
            ),
            SizedBox(
              width: 24,
            ),
            Expanded(
              child: CustomButton(
                  backgroundColor: null,
                  textColor: Colors.white,
                  title: 'Send Money'),
            ),
          ],
        ),
      ],
    );
  }
}
