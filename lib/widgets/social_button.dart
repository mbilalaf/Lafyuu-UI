import 'package:flutter/material.dart';
import 'package:lafyuu_e_commerce/utils/colors.dart';
import 'package:lafyuu_e_commerce/utils/styles.dart';

class SocialBtn extends StatelessWidget {
  final String text;
  final ImageProvider image;
  const SocialBtn({
    super.key,
    required this.text,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 57,
      decoration: BoxDecoration(
        color: MyColors.white,
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: MyColors.netralLight),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Row(
          children: [
            Image(
              image: image,
              height: 24,
              width: 24,
            ),
            const SizedBox(width: 90),
            Text(
              text,
              style: MyStyles.mediumText.copyWith(
                fontWeight: FontWeight.w700,
                color: MyColors.netralGrey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
