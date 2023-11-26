import 'package:flutter/material.dart';
import 'package:lafyuu_e_commerce/utils/colors.dart';
import 'package:lafyuu_e_commerce/utils/styles.dart';

class MyReview extends StatelessWidget {
  final IconData? icons;
  final String text;
  final double? width;
  const MyReview({
    super.key,
    this.icons,
    required this.text,
    this.width = 60,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: width,
      decoration: BoxDecoration(
        color: MyColors.white,
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: MyColors.netralLight),
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icons,
              color: MyColors.primaryYellow,
            ),
            const SizedBox(width: 4),
            Text(
              text,
              style: MyStyles.normalText.copyWith(
                fontWeight: FontWeight.w400,
                color: MyColors.netralGrey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
