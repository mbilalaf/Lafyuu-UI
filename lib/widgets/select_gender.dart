import 'package:flutter/material.dart';
import 'package:lafyuu_e_commerce/utils/colors.dart';
import 'package:lafyuu_e_commerce/utils/styles.dart';

class SelectGender extends StatefulWidget {
  const SelectGender({super.key, required });

  @override
  State<SelectGender> createState() => _SelectGenderState();
}

class _SelectGenderState extends State<SelectGender> {
  int selectedIndex = 0;

  void onTap(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 178,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: MyColors.white,
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: MyColors.netralLight),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () {
                    onTap(0);
                  },
                  child: Container(
                    height: 48,
                    color: MyColors.white,
                    child: Text(
                      'Male',
                      style: MyStyles.normalText.copyWith(
                        color: selectedIndex == 0
                            ? MyColors.primaryBlue
                            : MyColors.netralGrey,
                        fontWeight: selectedIndex == 0
                            ? FontWeight.w700
                            : FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    onTap(1);
                  },
                  child: Container(
                    height: 48,
                    color: MyColors.white,
                    child: Text(
                      'Female',
                      style: MyStyles.normalText.copyWith(
                        color: selectedIndex == 1
                            ? MyColors.primaryBlue
                            : MyColors.netralGrey,
                        fontWeight: selectedIndex == 1
                            ? FontWeight.w700
                            : FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    onTap(2);
                  },
                  child: Container(
                    height: 48,
                    color: MyColors.white,
                    child: Text(
                      'Other',
                      style: MyStyles.normalText.copyWith(
                        color: selectedIndex == 2
                            ? MyColors.primaryBlue
                            : MyColors.netralGrey,
                        fontWeight: selectedIndex == 2
                            ? FontWeight.w700
                            : FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
