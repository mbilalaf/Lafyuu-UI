// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:lafyuu_e_commerce/pages/product_detail_page.dart';
import 'package:lafyuu_e_commerce/services/models/mega_sale_model.dart';
import 'package:lafyuu_e_commerce/utils/colors.dart';
import 'package:lafyuu_e_commerce/utils/styles.dart';

class SuperFlash extends StatelessWidget {
  final IconData? icon;
  SuperFlash({
    super.key,
    this.icon,
  });

  List<MegaSale> megaSale = [
    MegaSale('assets/images/image 52.png', 'FS - Quilted\nMaxi Cross...',
        '\$299,43', '24% off', '\$534,33'),
    MegaSale('assets/images/image 48.png', 'FS - Quilted\nMaxi Cross...',
        '\$299,43', '24% off', '\$534,33'),
    MegaSale('assets/images/image 53.png', 'FS - Quilted\nMaxi Cross...',
        '\$299,43', '24% off', '\$534,33'),
    MegaSale('assets/images/image 48.png', 'FS - Quilted\nMaxi Cross...',
        '\$299,43', '24% off', '\$534,33'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600,
      child: GridView.builder(
        physics: const ScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: (165 / 280),
          crossAxisSpacing: 12,
        ),
        itemCount: megaSale.length,
        itemBuilder: (context, index) {
          return Row(
            children: [
              Expanded(
                child: Container(
                  height: 280,
                  decoration: BoxDecoration(
                    color: MyColors.white,
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: MyColors.netralLight),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 16, right: 16, top: 16, bottom: 8),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const ProductDetailPage(),
                              ),
                            );
                          },
                          child: Image(
                            image: AssetImage(
                              megaSale[index].img,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              megaSale[index].title,
                              style: MyStyles.normalText.copyWith(
                                color: MyColors.netralDark,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              megaSale[index].price,
                              style: MyStyles.normalText.copyWith(
                                color: MyColors.primaryBlue,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Row(
                              children: [
                                Text(
                                  megaSale[index].discount,
                                  style: MyStyles.mediumCaption.copyWith(
                                    color: MyColors.netralGrey,
                                    fontWeight: FontWeight.w700,
                                    decoration: TextDecoration.lineThrough,
                                  ),
                                ),
                                const SizedBox(width: 8),
                                Text(
                                  megaSale[index].offer,
                                  style: MyStyles.normalText.copyWith(
                                    color: MyColors.primaryRed,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                const SizedBox(width: 8),
                                Icon(
                                  icon,
                                  color: MyColors.netralGrey,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
