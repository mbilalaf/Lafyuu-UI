import 'package:flutter/material.dart';
import 'package:lafyuu_e_commerce/utils/colors.dart';
import 'package:lafyuu_e_commerce/utils/styles.dart';
import 'package:lafyuu_e_commerce/widgets/my_button.dart';
import 'package:lafyuu_e_commerce/widgets/price_text_field.dart';

class AddAddressPage extends StatelessWidget {
  const AddAddressPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: MyColors.netralGrey,
        ),
        title: Text(
          'Address',
          style: MyStyles.heading4.copyWith(
            color: MyColors.netralDark,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Country or Region',
                style: MyStyles.heading5.copyWith(
                  color: MyColors.netralDark,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 12),
              const PriceTextField(text: 'Pakistan'),
              const SizedBox(height: 24),
              Text(
                'First Name',
                style: MyStyles.heading5.copyWith(
                  color: MyColors.netralDark,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 12),
              const PriceTextField(),
              const SizedBox(height: 24),
              Text(
                'last Name',
                style: MyStyles.heading5.copyWith(
                  color: MyColors.netralDark,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 12),
              const PriceTextField(),
              const SizedBox(height: 24),
              Text(
                'Street Address',
                style: MyStyles.heading5.copyWith(
                  color: MyColors.netralDark,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 12),
              const PriceTextField(),
              const SizedBox(height: 24),
              Text(
                'Street Address 2 (Optional)',
                style: MyStyles.heading5.copyWith(
                  color: MyColors.netralDark,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 12),
              const PriceTextField(),
              const SizedBox(height: 24),
              Text(
                'City',
                style: MyStyles.heading5.copyWith(
                  color: MyColors.netralDark,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 12),
              const PriceTextField(),
              const SizedBox(height: 24),
              Text(
                'State/Province/Region',
                style: MyStyles.heading5.copyWith(
                  color: MyColors.netralDark,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 12),
              const PriceTextField(),
              const SizedBox(height: 24),
              Text(
                'Zip Code',
                style: MyStyles.heading5.copyWith(
                  color: MyColors.netralDark,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 12),
              const PriceTextField(),
              const SizedBox(height: 24),
              Text(
                'Phone Number',
                style: MyStyles.heading5.copyWith(
                  color: MyColors.netralDark,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 12),
              const PriceTextField(),
              const SizedBox(height: 24),
              MyButton(
                btnText: 'Add Address',
                onPress: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AddAddressPage(),
                      ));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
