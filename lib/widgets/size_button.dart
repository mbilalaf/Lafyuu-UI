import 'package:flutter/material.dart';
import 'package:lafyuu_e_commerce/utils/colors.dart';
import 'package:lafyuu_e_commerce/utils/styles.dart';

class Sizes extends StatelessWidget {
  final String size;
  const Sizes({
    super.key,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(
        color: MyColors.white,
        borderRadius: BorderRadius.circular(100),
        border: Border.all(color: MyColors.netralLight),
      ),
      child: Center(
        child: Text(
          size,
          style: MyStyles.heading5.copyWith(
            fontWeight: FontWeight.w700,
            color: MyColors.netralDark,
          ),
        ),
      ),
    );
  }
}
