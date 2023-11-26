import 'package:flutter/material.dart';
import 'package:lafyuu_e_commerce/utils/colors.dart';
import 'package:lafyuu_e_commerce/utils/styles.dart';
import 'package:lafyuu_e_commerce/widgets/my_button.dart';

class ChangePasswordPage extends StatelessWidget {
  const ChangePasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: MyColors.netralGrey,
        ),
        title: Text(
          'Change Pasword',
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
              'Old Pasword',
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
                      'assets/icons/system icon/Password.png',
                    ),
                  ),
                  hintText: "•••••••••••••••••",
                  hintStyle: MyStyles.normalText.copyWith(
                    color: MyColors.netralGrey,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 1,
                  ),
                ),
                cursorColor: MyColors.primaryBlue,
              ),
            ),
            const SizedBox(height: 24),
            Text(
              'New Pasword',
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
                      'assets/icons/system icon/Password.png',
                    ),
                  ),
                  hintText: "•••••••••••••••••",
                  hintStyle: MyStyles.normalText.copyWith(
                    color: MyColors.netralGrey,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 1,
                  ),
                ),
                cursorColor: MyColors.primaryBlue,
              ),
            ),
            const SizedBox(height: 24),
            Text(
              'New Pasword Again',
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
                      'assets/icons/system icon/Password.png',
                    ),
                  ),
                  hintText: "•••••••••••••••••",
                  hintStyle: MyStyles.normalText.copyWith(
                    color: MyColors.netralGrey,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 1,
                  ),
                ),
                cursorColor: MyColors.primaryBlue,
              ),
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
