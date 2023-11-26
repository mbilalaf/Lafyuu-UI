import 'package:flutter/material.dart';
import 'package:lafyuu_e_commerce/utils/colors.dart';
import 'package:lafyuu_e_commerce/utils/styles.dart';
import 'package:lafyuu_e_commerce/widgets/my_button.dart';
import 'package:lafyuu_e_commerce/widgets/price_text_field.dart';

class EditCardPage extends StatelessWidget {
  const EditCardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: MyColors.netralGrey,
        ),
        title: Text(
          'Add Card',
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
              'Card Number',
              style: MyStyles.heading5.copyWith(
                color: MyColors.netralDark,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 12),
            const PriceTextField(text: '5351 1000 0478 0027'),
            const SizedBox(height: 24),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Expiration Date',
                        style: MyStyles.heading5.copyWith(
                          color: MyColors.netralDark,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Text(
                        'Security Code',
                        style: MyStyles.heading5.copyWith(
                          color: MyColors.netralDark,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                const Row(
                  children: [
                    Expanded(
                      child: PriceTextField(text: '03 / 27'),
                    ),
                    SizedBox(width: 12),
                    Expanded(
                      child: PriceTextField(text: '123'),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 24),
            Text(
              'Card Holder',
              style: MyStyles.heading5.copyWith(
                color: MyColors.netralDark,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 12),
            const PriceTextField(text: 'MUHAMMAD BILAL'),
            const Spacer(),
            MyButton(
              btnText: 'Add Card',
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
