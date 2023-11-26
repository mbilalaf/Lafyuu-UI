import 'package:flutter/material.dart';
import 'package:lafyuu_e_commerce/utils/colors.dart';
import 'package:lafyuu_e_commerce/utils/styles.dart';

class NotificationCard extends StatelessWidget {
  final Widget leading;
  final String title;
  final String? subTitle;
  final String? date;
  const NotificationCard({
    super.key,
    required this.leading,
    required this.title,
    this.subTitle,
    this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          children: [
            leading,
            const SizedBox(width: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: MyStyles.heading5,
                ),
              ],
            ),
          ],
        ),
        const SizedBox(height: 8),
        Text(
          '$subTitle',
          style: MyStyles.normalText.copyWith(
            fontWeight: FontWeight.w700,
            color: MyColors.netralGrey,
          ),
        ),
        const SizedBox(height: 8),
        Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              '$date',
              style: MyStyles.normalText,
            ),
          ),
        ),
      ],
    );
  }
}
