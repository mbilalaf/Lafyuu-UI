import 'package:flutter/material.dart';
import 'package:lafyuu_e_commerce/utils/colors.dart';
import 'package:lafyuu_e_commerce/utils/styles.dart';
import 'package:lafyuu_e_commerce/widgets/super_flash_sale.dart';

class OfferPage extends StatelessWidget {
  const OfferPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'Offer',
          style: MyStyles.heading4.copyWith(
            color: MyColors.netralDark,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Container(
              height: 80,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: MyColors.primaryBlue,
              ),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Text(
                  'Use “MEGSL” Cupon For\nGet 90%off',
                  style: MyStyles.heading4.copyWith(
                    color: MyColors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
            const SuperFlashSale(),
            const SizedBox(height: 16),
            Stack(
              children: [
                const Image(
                  image: AssetImage(
                    'assets/images/image 51.png',
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 50),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '90% Off Super Mega\nSale',
                          textAlign: TextAlign.start,
                          style: MyStyles.heading2.copyWith(
                            color: MyColors.white,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(height: 30),
                        Text(
                          'Special birthday Lafyuu',
                          textAlign: TextAlign.start,
                          style: MyStyles.normalText.copyWith(
                            color: MyColors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
