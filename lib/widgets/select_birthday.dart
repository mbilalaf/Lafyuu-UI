// ignore_for_file: avoid_unnecessary_containers, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_holo_date_picker/date_picker.dart';
import 'package:flutter_holo_date_picker/date_picker_theme.dart';
import 'package:flutter_holo_date_picker/widget/date_picker_widget.dart';
import 'package:lafyuu_e_commerce/utils/colors.dart';
import 'package:lafyuu_e_commerce/utils/styles.dart';

class SelectBirthday extends StatefulWidget {
  const SelectBirthday({super.key});

  @override
  _WidgetPageState createState() => _WidgetPageState();
}

class _WidgetPageState extends State<SelectBirthday> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 165,
      decoration: BoxDecoration(
        color: MyColors.white,
        border: Border.all(color: MyColors.netralLight),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Center(
        child: Column(
          children: [
            Container(
              child: DatePickerWidget(
                looping: true, // default is not looping
                firstDate: DateTime(2001),
                lastDate: DateTime(2023),
//              initialDate: DateTime.now(),// DateTime(1994),
                dateFormat:
                    // "MM-dd(E)",
                    "dd/MMMM/yyyy",
                locale: DatePicker.localeFromString('en_us'),
                onChange: (DateTime newDate, _) {
                  setState(() {});
                },
                pickerTheme: DateTimePickerTheme(
                  backgroundColor: Colors.transparent,
                  itemTextStyle: MyStyles.heading4.copyWith(
                    color: MyColors.primaryBlue,
                    fontWeight: FontWeight.w700,
                  ),
                  dividerColor: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
