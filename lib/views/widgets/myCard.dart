import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/utils/styles.dart';

class MyCard extends StatelessWidget {
  const MyCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        decoration: BoxDecoration(
          image: const DecorationImage(
            image: AssetImage(Assets.imagesMyCard),
          ),
          borderRadius: BorderRadius.circular(12),
          color: const Color(0xff4EB7F2),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ListTile(
              contentPadding: const EdgeInsets.only(
                left: 20,
                right: 30,
              ),
              title: Text(
                'Name card',
                overflow: TextOverflow.ellipsis,
                style: Styles.regularStyle16(context)
                    .copyWith(color: Colors.white),
              ),
              subtitle: Text(
                'Syah Bandi',
                overflow: TextOverflow.ellipsis,
                style: Styles.mediumStyle20(context),
              ),
              trailing: Image.asset(Assets.imagesGallery),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 12.0),
              child: Text(
                '0918 8124 0042 8129',
                overflow: TextOverflow.ellipsis,
                style: Styles.semiBoldStyle24(context)
                    .copyWith(color: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 12.0),
              child: Text(
                '12/20 - 124',
                style: Styles.regularStyle16(context)
                    .copyWith(color: Colors.white),
              ),
            ),
            const Flexible(
              child: SizedBox(
                height: 53 - 28,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
