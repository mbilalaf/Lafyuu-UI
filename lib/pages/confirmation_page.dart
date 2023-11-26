import 'package:flutter/material.dart';
import 'package:lafyuu_e_commerce/pages/address_page.dart';
import 'package:lafyuu_e_commerce/utils/colors.dart';
import 'package:lafyuu_e_commerce/utils/styles.dart';
import 'package:lafyuu_e_commerce/widgets/my_button.dart';

class ConfirmationPage extends StatelessWidget {
  const ConfirmationPage({super.key});

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
                'assets/icons/system icon/warning.png',
              ),
            ),
            Text(
              'Confirmation',
              style: MyStyles.heading2.copyWith(
                color: MyColors.netralDark,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Are you sure you wanna delete address?',
              style: MyStyles.normalText.copyWith(
                color: MyColors.netralGrey,
              ),
            ),
            const SizedBox(height: 16),
            MyButton(
              btnText: 'Delete',
              onPress: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AddressPage(),
                    ));
              },
            ),
            const SizedBox(height: 16),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AddressPage(),
                    ));
              },
              child: Container(
                height: 57,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: MyColors.white,
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(
                    color: MyColors.netralLight,
                  ),
                ),
                child: Center(
                  child: Text(
                    'Cancel',
                    style: MyStyles.mediumText.copyWith(
                      fontWeight: FontWeight.w700,
                      color: MyColors.netralGrey,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
