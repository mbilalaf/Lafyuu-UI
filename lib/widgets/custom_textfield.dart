import 'package:flutter/material.dart';
import 'package:lafyuu_e_commerce/utils/colors.dart';
import 'package:lafyuu_e_commerce/utils/styles.dart';

class CustomTextField extends StatelessWidget {
  final String text;
  final IconData prefixIcon;
  final IconData? sufixIcon;
  final VoidCallback? onTap;

  const CustomTextField({
    super.key,
    required this.text,
    required this.prefixIcon,
    this.sufixIcon,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: SizedBox(
        height: 48,
        width: MediaQuery.of(context).size.width,
        child: TextFormField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: const BorderSide(
                color: MyColors.netralLight,
              ),
            ),
            prefixIcon: Icon(
              prefixIcon,
              color: MyColors.netralGrey,
              size: 20,
            ),
            suffixIcon: Icon(
              sufixIcon,
              color: MyColors.netralGrey,
              size: 20,
            ),
            hintText: text,
            hintStyle: MyStyles.normalText.copyWith(
              color: MyColors.netralGrey,
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: MyColors.primaryBlue,
              ),
            ),
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: MyColors.netralLight,
              ),
            ),
            fillColor: MyColors.white,
            filled: true,
          ),
        ),
      ),
    );
  }
}
