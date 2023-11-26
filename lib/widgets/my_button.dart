import 'package:flutter/material.dart';
import 'package:lafyuu_e_commerce/utils/colors.dart';
import 'package:lafyuu_e_commerce/utils/styles.dart';

class MyButton extends StatelessWidget {
  final String btnText;
  final VoidCallback onPress;
  final double? height;
  final double? width;
  final Color? color;
  final Color? textColor;

  const MyButton({
    super.key,
    required this.btnText,
    required this.onPress,
    this.height = 50,
    this.width = 380,
    this.color = MyColors.primaryBlue,
    this.textColor = MyColors.white,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(
              color: MyColors.primaryBlue.withOpacity(0.25),
              blurRadius: 30,
              spreadRadius: 3,
              blurStyle: BlurStyle.normal,
              offset: const Offset(0, 10),
            ),
          ],
        ),
        child: Center(
          child: Text(
            btnText,
            style: MyStyles.mediumText.copyWith(
              fontWeight: FontWeight.w700,
              color: textColor,
            ),
          ),
        ),
      ),
    );
  }
}
