import 'package:flutter/material.dart';
import 'package:lafyuu_e_commerce/utils/colors.dart';
import 'package:lafyuu_e_commerce/utils/styles.dart';

class PriceTextField extends StatelessWidget {
  final String? text;
  const PriceTextField({
    super.key,
    this.text,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
          hintText: text,
          hintStyle: MyStyles.normalText.copyWith(
            color: MyColors.netralGrey,
            fontWeight: FontWeight.w700,
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
    );
  }
}
