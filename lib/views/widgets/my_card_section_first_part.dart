import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/styles.dart';
import 'package:responsive_dashboard/views/widgets/dots_indicator_list.dart';
import 'package:responsive_dashboard/views/widgets/my_card_page_view.dart';

class MyCardSectionFirstPart extends StatefulWidget {
  const MyCardSectionFirstPart({super.key});

  @override
  State<MyCardSectionFirstPart> createState() => _MyCardSectionFirstPartState();
}

class _MyCardSectionFirstPartState extends State<MyCardSectionFirstPart> {
  late PageController pageController;
  int currentIndex = 0;
  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      currentIndex = pageController.page!.round();
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'My Card',
          style: Styles.semiBoldStyle20(context),
        ),
        const SizedBox(
          height: 20,
        ),
        MyCardsPageView(
          pageController: pageController,
        ),
        const SizedBox(height: 19),
        DotIndicator(
          currentIndex: currentIndex,
        )
      ],
    );
  }
}
