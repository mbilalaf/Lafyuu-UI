// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lafyuu_e_commerce/pages/success_order_page.dart';
import 'package:lafyuu_e_commerce/utils/colors.dart';
import 'package:lafyuu_e_commerce/utils/styles.dart';
import 'package:lafyuu_e_commerce/widgets/my_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ChooseDebitCard extends StatelessWidget {
  ChooseDebitCard({super.key});

  PageController controller = PageController(viewportFraction: 0.8);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: MyColors.netralGrey,
        ),
        title: Text(
          'Choose Card',
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
              height: 220,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [
                    Color(0xffAF9E00),
                    Color(0xff5C4E01),
                  ],
                ),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'HBL',
                          style: MyStyles.heading2.copyWith(
                            color: MyColors.white,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              'gold',
                              style: MyStyles.mediumText.copyWith(
                                color: MyColors.white,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            const SizedBox(width: 2),
                            Text(
                              'debit',
                              style: MyStyles.mediumText.copyWith(
                                color: MyColors.white,
                                fontWeight: FontWeight.w100,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image(
                          height: 40,
                          image: AssetImage(
                            'assets/images/chip.png',
                          ),
                        ),
                        Image(
                          height: 40,
                          color: MyColors.white,
                          image: AssetImage(
                            'assets/icons/system icon/wifi3.png',
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        const Image(
                          height: 16,
                          color: MyColors.white,
                          image: AssetImage(
                            'assets/icons/system icon/left arrow.png',
                          ),
                        ),
                        const SizedBox(width: 8),
                        Text(
                          '5351 1000 0478 0027',
                          style: MyStyles.largeText.copyWith(
                            color: MyColors.white,
                            wordSpacing: 10,
                            letterSpacing: 3,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 2),
                    Row(
                      children: [
                        const Text(
                          'VALID\nFROM',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 8,
                            fontWeight: FontWeight.w400,
                            color: MyColors.white,
                          ),
                        ),
                        const SizedBox(width: 8),
                        const Image(
                          height: 10,
                          color: MyColors.white,
                          image: AssetImage(
                            'assets/icons/system icon/right-arrow.png',
                          ),
                        ),
                        const SizedBox(width: 8),
                        Text(
                          '03 / 22',
                          style: MyStyles.mediumText.copyWith(
                            color: MyColors.white,
                          ),
                        ),
                        const SizedBox(width: 16),
                        const Text(
                          'VALID\nTHRU',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 8,
                            fontWeight: FontWeight.w400,
                            color: MyColors.white,
                          ),
                        ),
                        const SizedBox(width: 8),
                        const Image(
                          height: 10,
                          color: MyColors.white,
                          image: AssetImage(
                            'assets/icons/system icon/right-arrow.png',
                          ),
                        ),
                        const SizedBox(width: 8),
                        Text(
                          '03 / 27',
                          style: MyStyles.mediumText.copyWith(
                            color: MyColors.white,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'MUHAMMAD BILAL',
                          style: MyStyles.largeText.copyWith(
                            color: MyColors.white,
                            letterSpacing: 3,
                          ),
                        ),
                        Stack(
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: const Color(0xffFF0404).withOpacity(0.5),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 25),
                              child: Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color:
                                      const Color(0xffFF9C07).withOpacity(0.5),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
            SmoothPageIndicator(
              controller: controller,
              count: 5,
              effect: const JumpingDotEffect(
                dotColor: MyColors.netralLight,
                activeDotColor: MyColors.primaryBlue,
                dotHeight: 8,
                dotWidth: 8,
              ),
            ),
            const SizedBox(height: 440),
            MyButton(
              btnText: 'Pay \$786.86',
              onPress: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SuccessOrderPage(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
