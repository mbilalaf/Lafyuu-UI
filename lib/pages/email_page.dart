import 'package:flutter/material.dart';
import 'package:lafyuu_e_commerce/utils/colors.dart';
import 'package:lafyuu_e_commerce/utils/styles.dart';
import 'package:lafyuu_e_commerce/widgets/my_button.dart';

class EmailPage extends StatelessWidget {
  const EmailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: MyColors.netralGrey,
        ),
        title: Text(
          'Email',
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
              'Change Email',
              style: MyStyles.heading5.copyWith(
                color: MyColors.netralDark,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 12),
            SizedBox(
              child: TextField(
                style: MyStyles.normalText.copyWith(
                  fontWeight: FontWeight.w700,
                  color: MyColors.netralGrey,
                ),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: const BorderSide(
                      color: MyColors.netralLight,
                    ),
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
                  prefixIcon: const Image(
                    height: 16,
                    image: AssetImage(
                      'assets/icons/system icon/message-x.png',
                    ),
                  ),
                  hintText: "bafridi899@gmail.com",
                  hintStyle: MyStyles.normalText.copyWith(
                    color: MyColors.netralGrey,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                cursorColor: MyColors.primaryBlue,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'We Will Send verification to your New Email',
              style: MyStyles.normalText.copyWith(
                color: MyColors.primaryBlue,
              ),
            ),
            const Spacer(),
            MyButton(
              btnText: 'Change Email',
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
