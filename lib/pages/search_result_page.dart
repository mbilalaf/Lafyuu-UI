import 'package:custom_rating_bar/custom_rating_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iconsax/iconsax.dart';
import 'package:lafyuu_e_commerce/pages/filter_search_page.dart';
import 'package:lafyuu_e_commerce/pages/product_detail_page.dart';
import 'package:lafyuu_e_commerce/pages/short_by_page.dart';
import 'package:lafyuu_e_commerce/services/models/mega_sale_model.dart';
import 'package:lafyuu_e_commerce/utils/colors.dart';
import 'package:lafyuu_e_commerce/utils/styles.dart';

class SearchResultPage extends StatelessWidget {
  const SearchResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: SizedBox(
          height: 80,
          width: MediaQuery.of(context).size.width,
          child: Row(
            children: [
              Expanded(
                flex: 5,
                child: SizedBox(
                  height: 48,
                  width: MediaQuery.of(context).size.width,
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: const BorderSide(
                          color: MyColors.primaryBlue,
                        ),
                      ),
                      prefixIcon: const Icon(
                        Icons.search,
                        color: MyColors.primaryBlue,
                        size: 20,
                      ),
                      hintText: 'Nike Air Max',
                      hintStyle: MyStyles.normalText.copyWith(
                        color: MyColors.netralGrey,
                        fontWeight: FontWeight.w700,
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: MyColors.primaryBlue,
                        ),
                      ),
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: MyColors.primaryBlue,
                        ),
                      ),
                      fillColor: MyColors.white,
                      filled: true,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: SizedBox(
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const ShortByPage(),
                              ));
                        },
                        child: const Icon(
                          FontAwesomeIcons.arrowDownWideShort,
                          color: MyColors.netralGrey,
                        ),
                      ),
                      const SizedBox(width: 8),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const FilterSearchPage(),
                              ));
                        },
                        child: const Icon(
                          Iconsax.filter,
                          color: MyColors.primaryBlue,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '145 Results',
                  style: MyStyles.normalText.copyWith(
                    color: MyColors.netralGrey,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      'Man Shoes',
                      style: MyStyles.normalText.copyWith(
                        color: MyColors.netralDark,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(width: 8),
                    const Image(
                      height: 24,
                      image: AssetImage(
                        'assets/icons/system icon/bottom.png',
                      ),
                    ),
                  ],
                )
              ],
            ),
            Expanded(
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
                                  left: 16,
                                  right: 16,
                                  top: 16,
                                  bottom: 8,
                                ),
                                child: InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const ProductDetailPage(),
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
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 16),
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
                                    RatingBar(
                                      filledIcon: Icons.star,
                                      emptyIcon: Icons.star,
                                      size: 18,
                                      emptyColor:
                                          MyColors.netralGrey.withOpacity(0.6),
                                      onRatingChanged: (value) =>
                                          debugPrint('$value'),
                                      initialRating: 3,
                                      maxRating: 5,
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
                                          style:
                                              MyStyles.mediumCaption.copyWith(
                                            color: MyColors.netralGrey,
                                            fontWeight: FontWeight.w700,
                                            decoration:
                                                TextDecoration.lineThrough,
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
            ),
          ],
        ),
      ),
    );
  }
}

List<MegaSale> megaSale = [
  MegaSale('assets/images/image 49.png', 'FS - Quilted\nMaxi Cross...',
      '\$299,43', '24% off', '\$534,33'),
  MegaSale('assets/images/image 47.png', 'FS - Quilted\nMaxi Cross...',
      '\$299,43', '24% off', '\$534,33'),
  MegaSale('assets/images/image 53.png', 'FS - Quilted\nMaxi Cross...',
      '\$299,43', '24% off', '\$534,33'),
  MegaSale('assets/images/image 46.png', 'FS - Quilted\nMaxi Cross...',
      '\$299,43', '24% off', '\$534,33'),
  MegaSale('assets/images/Rectangle 428.png', 'FS - Quilted\nMaxi Cross...',
      '\$299,43', '24% off', '\$534,33'),
  MegaSale('assets/images/image 49.png', 'FS - Quilted\nMaxi Cross...',
      '\$299,43', '24% off', '\$534,33'),
];
