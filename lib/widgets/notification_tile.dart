import 'package:flutter/material.dart';
import 'package:lafyuu_e_commerce/utils/colors.dart';
import 'package:lafyuu_e_commerce/utils/styles.dart';

class MyListTile extends StatelessWidget {
  final IconData leading;
  final String tilte;
  final String trailing;
  final VoidCallback onTap;
  const MyListTile({
    super.key,
    required this.leading,
    required this.tilte,
    required this.trailing,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: ListTile(
        leading: Icon(
          leading,
          color: MyColors.primaryBlue,
        ),
        title: Text(
          tilte,
          style: MyStyles.heading5,
        ),
        trailing: Container(
          height: 20,
          width: 20,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: MyColors.primaryRed,
          ),
          child: Center(
            child: Text(
              trailing,
              style: MyStyles.normalText.copyWith(
                fontWeight: FontWeight.w700,
                color: MyColors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
