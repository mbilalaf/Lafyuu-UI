import 'package:flutter/material.dart';
import 'package:lafyuu_e_commerce/utils/colors.dart';
import 'package:lafyuu_e_commerce/utils/styles.dart';
import 'package:lafyuu_e_commerce/widgets/my_button.dart';
import 'package:lafyuu_e_commerce/widgets/select_birthday.dart';

class BirthdayPage extends StatefulWidget {
  const BirthdayPage({super.key});

  @override
  State<BirthdayPage> createState() => _BirthdayPageState();
}

class _BirthdayPageState extends State<BirthdayPage> {
  bool onTap = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: MyColors.netralGrey,
        ),
        title: Text(
          'Birthday',
          style: MyStyles.heading4.copyWith(
            color: MyColors.netralDark,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Your Birthday',
              style: MyStyles.heading5.copyWith(
                color: MyColors.netralDark,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 12),
            SizedBox(
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
                  suffixIcon: InkWell(
                    onTap: () {
                      setState(() {
                        onTap = !onTap;
                      });
                    },
                    child: const Image(
                      height: 8,
                      color: MyColors.primaryBlue,
                      image: AssetImage(
                        'assets/icons/system icon/date2.png',
                      ),
                    ),
                  ),
                  hintText: '21/04/2001',
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
            ),
            const SizedBox(height: 8),
            Visibility(
              visible: onTap,
              child: const SelectBirthday(),
            ),
            const Spacer(),
            MyButton(
              btnText: 'Save',
              onPress: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
