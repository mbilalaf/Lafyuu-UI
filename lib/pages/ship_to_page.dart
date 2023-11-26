import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lafyuu_e_commerce/pages/payment_method_page.dart';
import 'package:lafyuu_e_commerce/utils/colors.dart';
import 'package:lafyuu_e_commerce/utils/styles.dart';
import 'package:lafyuu_e_commerce/widgets/my_button.dart';

class ShipToPage extends StatelessWidget {
  const ShipToPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: MyColors.netralGrey,
        ),
        title: Text(
          'Ship To',
          style: MyStyles.heading4.copyWith(
            color: MyColors.netralDark,
            fontWeight: FontWeight.w700,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Icon(
              FontAwesomeIcons.plus,
              color: MyColors.primaryBlue,
              size: 24,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Container(
              height: 240,
              decoration: BoxDecoration(
                color: MyColors.white,
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: MyColors.primaryBlue),
              ),
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Priscekila',
                      style: MyStyles.heading5.copyWith(
                        color: MyColors.netralDark,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      '3711 Spring Hill Rd undefined Tallahassee, Nevada 52874 United States',
                      style: MyStyles.normalText.copyWith(
                        color: MyColors.netralGrey,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      '+92 3197594423',
                      style: MyStyles.normalText.copyWith(
                        color: MyColors.netralGrey,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        MyButton(
                          btnText: 'Edit',
                          onPress: () {},
                          width: 77,
                        ),
                        const SizedBox(width: 24),
                        const Icon(
                          Icons.delete_outline_outlined,
                          color: MyColors.netralGrey,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
            Container(
              height: 240,
              decoration: BoxDecoration(
                color: MyColors.white,
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: MyColors.netralLight),
              ),
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Ahmad Khaidir',
                      style: MyStyles.heading5.copyWith(
                        color: MyColors.netralDark,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      '3711 Spring Hill Rd undefined Tallahassee, Nevada 52874 United States',
                      style: MyStyles.normalText.copyWith(
                        color: MyColors.netralGrey,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      '+92 3197594423',
                      style: MyStyles.normalText.copyWith(
                        color: MyColors.netralGrey,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        MyButton(
                          btnText: 'Edit',
                          onPress: () {},
                          width: 77,
                        ),
                        const SizedBox(width: 24),
                        const Icon(
                          Icons.delete_outline_outlined,
                          color: MyColors.netralGrey,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 70),
            MyButton(
              btnText: 'Next',
              onPress: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PaymentMethodPage(),
                    ));
              },
            ),
          ],
        ),
      ),
    );
  }
}
