import 'package:flutter/material.dart';
import 'package:lafyuu_e_commerce/utils/colors.dart';
import 'package:lafyuu_e_commerce/utils/styles.dart';

class FilterContainer extends StatefulWidget {
  final String text;
  final double? width;

  const FilterContainer({
    Key? key,
    required this.text,
    this.width,
  }) : super(key: key);

  @override
  State<FilterContainer> createState() => _FilterContainerState();
}

class _FilterContainerState extends State<FilterContainer> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Colors.transparent,
      child: InkWell(
        onTap: () {
          setState(() {
            selected = true;
          });
        },
        child: Container(
          height: 60,
          width: widget.width,
          decoration: BoxDecoration(
            color: selected
                ? MyColors.primaryBlue.withOpacity(0.1)
                : MyColors.white,
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: MyColors.netralLight),
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                widget.text,
                style: MyStyles.normalText.copyWith(
                  color: selected ? MyColors.primaryBlue : MyColors.netralGrey,
                  fontWeight: selected ? FontWeight.w700 : FontWeight.w400,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
