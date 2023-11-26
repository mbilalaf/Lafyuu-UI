import 'package:flutter/material.dart';
import 'package:lafyuu_e_commerce/utils/colors.dart';
import 'package:lafyuu_e_commerce/utils/styles.dart';
import 'package:lafyuu_e_commerce/widgets/bottom_nav_bar.dart';
import 'package:lafyuu_e_commerce/widgets/my_button.dart';

class SuccessOrderPage extends StatelessWidget {
  const SuccessOrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Image(
              image: AssetImage(
                'assets/icons/system icon/success icon.png',
              ),
            ),
            Text(
              'Success',
              style: MyStyles.heading2.copyWith(
                color: MyColors.netralDark,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'thank you for shopping using lafyuu',
              style: MyStyles.normalText.copyWith(
                color: MyColors.netralGrey,
              ),
            ),
            const SizedBox(height: 16),
            MyButton(
              btnText: 'Back To Home',
              onPress: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const BottomNavBar(),
                    ));
              },
            ),
          ],
        ),
      ),
    );
  }
}
