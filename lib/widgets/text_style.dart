import 'package:flutter/material.dart';
import 'package:lafyuu_e_commerce/utils/colors.dart';
import 'package:lafyuu_e_commerce/utils/styles.dart';

class MyText extends StatelessWidget {
  final String textOne;
  final String textTwo;
  const MyText({
    super.key,
    required this.textOne,
    required this.textTwo,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          textOne,
          style: MyStyles.heading5.copyWith(
            fontWeight: FontWeight.w700,
            color: MyColors.netralDark,
          ),
        ),
        Text(
          textTwo,
          style: MyStyles.heading5.copyWith(
            fontWeight: FontWeight.w700,
            color: MyColors.primaryBlue,
          ),
        ),
      ],
    );
  }
}
