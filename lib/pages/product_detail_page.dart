// ignore_for_file: library_private_types_in_public_api

import 'package:custom_rating_bar/custom_rating_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lafyuu_e_commerce/pages/review_product_page.dart';
import 'package:lafyuu_e_commerce/services/models/category_model.dart';
import 'package:lafyuu_e_commerce/services/models/flash_sale_model.dart';
import 'package:lafyuu_e_commerce/utils/colors.dart';
import 'package:lafyuu_e_commerce/utils/styles.dart';
import 'package:lafyuu_e_commerce/widgets/my_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ProductDetailPage extends StatefulWidget {
  const ProductDetailPage({Key? key}) : super(key: key);

  @override
  _ProductDetailPageState createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  PageController controller = PageController(viewportFraction: 0.8);
  String selectedSize = '';
  Color selectedColor = Colors.black;

  bool isFavorite = false;
  List<int> favoriteItems = [];

  List<ItemSize> itemSize = [
    ItemSize(sizee: '6'),
    ItemSize(sizee: '6.5'),
    ItemSize(sizee: '7'),
    ItemSize(sizee: '7.5'),
    ItemSize(sizee: '8'),
    ItemSize(sizee: '8.5'),
    ItemSize(sizee: '9'),
    ItemSize(sizee: '9.5'),
  ];

  List<SelectColor> colors = [
    SelectColor(color: MyColors.primaryBlue),
    SelectColor(color: MyColors.primaryRed),
    SelectColor(color: MyColors.primaryYellow),
    SelectColor(color: MyColors.primaryGreen),
    SelectColor(color: MyColors.primaryPurple),
    SelectColor(color: MyColors.netralDark),
    SelectColor(color: MyColors.netralGrey),
  ];

  List<FlashSale> flashSale = [
    FlashSale('assets/images/image 46.png', 'FS - Nike Air\nMax 270 React...',
        '\$299,43', '24% off'),
    FlashSale('assets/images/image 47.png', 'FS - Quilted\nMaxi Cross...',
        '\$299,43', '16% off'),
    FlashSale('assets/images/image 48.png', 'FS - Nike Air\nMax 270 React...',
        '\$299,43', '32% off'),
    FlashSale('assets/images/image 49.png', 'FS - Quilted\nMaxi Cross...',
        '\$299,43', '24% off'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: MyColors.netralGrey,
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Nike Air Max 270 Rea...',
              style: MyStyles.heading4.copyWith(
                color: MyColors.netralDark,
                fontWeight: FontWeight.w700,
              ),
            ),
            const Row(
              children: [
                Icon(
                  FontAwesomeIcons.magnifyingGlass,
                  size: 18,
                ),
                SizedBox(width: 16),
                Icon(
                  FontAwesomeIcons.ellipsisVertical,
                  size: 18,
                ),
              ],
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Image(
              fit: BoxFit.cover,
              image: AssetImage('assets/images/image 49.png'),
            ),
            const SizedBox(height: 16),
            SmoothPageIndicator(
              controller: controller,
              count: 5,
              effect: const JumpingDotEffect(
                dotColor: MyColors.netralLight,
                activeDotColor: MyColors.primaryBlue,
                dotHeight: 10,
                dotWidth: 10,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Nike Air Zoom Pegasus 36\nMiami',
                    style: MyStyles.heading3.copyWith(
                      fontWeight: FontWeight.w700,
                      color: MyColors.netralDark,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        isFavorite = !isFavorite;
                        if (isFavorite) {
                          favoriteItems.add(1);
                        } else {
                          favoriteItems.remove(1);
                        }
                      });
                    },
                    icon: Icon(
                      isFavorite ? Icons.favorite : FontAwesomeIcons.heart,
                      color: isFavorite
                          ? MyColors.primaryRed
                          : MyColors.netralGrey,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RatingBar(
                    filledIcon: Icons.star,
                    emptyIcon: Icons.star_border,
                    size: 28,
                    emptyColor: MyColors.netralGrey.withOpacity(0.6),
                    onRatingChanged: (value) => debugPrint('$value'),
                    initialRating: 3,
                    maxRating: 5,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    '\$299,43',
                    style: MyStyles.heading3.copyWith(
                      fontWeight: FontWeight.w700,
                      color: MyColors.primaryBlue,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Select size',
                    style: MyStyles.heading5.copyWith(
                      fontWeight: FontWeight.w700,
                      color: MyColors.netralDark,
                    ),
                  ),
                  const SizedBox(height: 12),
                  SizedBox(
                    height: 60,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: itemSize.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 16),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            onTap: () {
                              setState(() {
                                selectedSize = itemSize[index].sizee;
                              });
                            },
                            child: Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                color: MyColors.white,
                                borderRadius: BorderRadius.circular(100),
                                border: selectedSize == itemSize[index].sizee
                                    ? Border.all(color: MyColors.primaryBlue)
                                    : Border.all(color: MyColors.netralLight),
                              ),
                              child: Center(
                                child: Text(
                                  itemSize[index].sizee,
                                  style: MyStyles.heading5.copyWith(
                                    fontWeight: FontWeight.w700,
                                    color: MyColors.netralDark,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Select color',
                    style: MyStyles.heading5.copyWith(
                      fontWeight: FontWeight.w700,
                      color: MyColors.netralDark,
                    ),
                  ),
                  const SizedBox(height: 12),
                  SizedBox(
                    height: 60,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: colors.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 16),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            onTap: () {
                              setState(() {
                                selectedColor = colors[index].color;
                              });
                            },
                            child: selectedColor == colors[index].color
                                ? Container(
                                    height: 60,
                                    width: 60,
                                    decoration: BoxDecoration(
                                      color: colors[index].color,
                                      borderRadius: BorderRadius.circular(100),
                                      border: Border.all(
                                          color: MyColors.netralLight),
                                    ),
                                    child: Center(
                                      child: Container(
                                        height: 16,
                                        width: 16,
                                        decoration: BoxDecoration(
                                          color: MyColors.white,
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                      ),
                                    ),
                                  )
                                : Container(
                                    height: 60,
                                    width: 60,
                                    decoration: BoxDecoration(
                                      color: colors[index].color,
                                      borderRadius: BorderRadius.circular(100),
                                      border:
                                          selectedColor == colors[index].color
                                              ? Border.all(
                                                  color: MyColors.primaryBlue)
                                              : Border.all(
                                                  color: MyColors.netralLight),
                                    ),
                                  ),
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 24),
                  Text(
                    'Specification:',
                    style: MyStyles.heading5.copyWith(
                      fontWeight: FontWeight.w700,
                      color: MyColors.netralDark,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Shown:',
                        style: MyStyles.normalText.copyWith(
                          color: MyColors.netralDark,
                        ),
                      ),
                      Text(
                        'Laser Blue/Anthracite\n/Watermelon/White',
                        style: MyStyles.normalText.copyWith(
                          color: MyColors.netralGrey,
                        ),
                        textAlign: TextAlign.end,
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Style:',
                        style: MyStyles.normalText.copyWith(
                          color: MyColors.netralDark,
                        ),
                      ),
                      Text(
                        'CD0113-400',
                        style: MyStyles.normalText.copyWith(
                          color: MyColors.netralGrey,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'The Nike Air Max 270 React ENG combines a full-length React foam midsole with a 270 Max Air unit for unrivaled comfort and a striking visual experience.',
                    style: MyStyles.normalText.copyWith(
                      color: MyColors.netralGrey,
                    ),
                  ),
                  const SizedBox(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Review Product',
                        style: MyStyles.heading5.copyWith(
                          fontWeight: FontWeight.w700,
                          color: MyColors.netralDark,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const ReviewProductPage(),
                              ));
                        },
                        child: Text(
                          'See More',
                          style: MyStyles.heading5.copyWith(
                            fontWeight: FontWeight.w700,
                            color: MyColors.primaryBlue,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      RatingBar(
                        filledIcon: Icons.star,
                        emptyIcon: Icons.star_border,
                        size: 24,
                        emptyColor: MyColors.netralGrey.withOpacity(0.6),
                        onRatingChanged: (value) => debugPrint('$value'),
                        initialRating: 3,
                        maxRating: 5,
                      ),
                      const SizedBox(width: 8),
                      Row(
                        children: [
                          Text(
                            '4.5',
                            style: MyStyles.normalText.copyWith(
                                color: MyColors.netralGrey,
                                fontWeight: FontWeight.w700),
                          ),
                          const SizedBox(width: 4),
                          Text(
                            '(5 Review)',
                            style: MyStyles.normalText.copyWith(
                              color: MyColors.netralGrey,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),

                  // Reviews secction
                  Row(
                    children: [
                      const CircleAvatar(
                        radius: 32,
                        backgroundImage: AssetImage(
                          'assets/images/Ellipse 119.png',
                        ),
                      ),
                      const SizedBox(width: 16),
                      Column(
                        children: [
                          Text(
                            'James Lawson',
                            style: MyStyles.heading5.copyWith(
                              fontWeight: FontWeight.w700,
                              color: MyColors.netralDark,
                            ),
                          ),
                          const SizedBox(height: 4),
                          RatingBar(
                            filledIcon: Icons.star,
                            emptyIcon: Icons.star_border,
                            size: 22,
                            emptyColor: MyColors.netralGrey.withOpacity(0.6),
                            onRatingChanged: (value) => debugPrint('$value'),
                            initialRating: 3,
                            maxRating: 5,
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'air max are always very comfortable fit, clean and just perfect in every way. just the box was too small and scrunched the sneakers up a little bit, not sure if the box was always this small but the 90s are and will always be one of my favorites.',
                    style: MyStyles.normalText.copyWith(
                      color: MyColors.netralGrey,
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Row(
                    children: [
                      Image(
                        height: 72,
                        width: 72,
                        image: AssetImage('assets/images/image 57.png'),
                      ),
                      SizedBox(width: 12),
                      Image(
                        height: 72,
                        width: 72,
                        image: AssetImage('assets/images/image 46.png'),
                      ),
                      SizedBox(width: 12),
                      Image(
                        height: 72,
                        width: 72,
                        image: AssetImage('assets/images/Rectangle 429.png'),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'November 20, 2023',
                    style: MyStyles.normalText.copyWith(
                      color: MyColors.netralGrey,
                    ),
                  ),
                  const SizedBox(height: 24),

                  // You may also like section
                  Text(
                    'You Might Also Like',
                    style: MyStyles.heading5.copyWith(
                      fontWeight: FontWeight.w700,
                      color: MyColors.netralDark,
                    ),
                  ),
                  const SizedBox(height: 12),
                  SizedBox(
                    height: 238,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: flashSale.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 16),
                          child: Row(
                            children: [
                              Container(
                                height: 238,
                                width: 140,
                                decoration: BoxDecoration(
                                  color: MyColors.white,
                                  borderRadius: BorderRadius.circular(5),
                                  border:
                                      Border.all(color: MyColors.netralLight),
                                ),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 16),
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 109,
                                        width: 109,
                                        child: Image(
                                          image: AssetImage(
                                            flashSale[index].img,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 8),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            flashSale[index].title,
                                            style: MyStyles.normalText.copyWith(
                                              color: MyColors.netralDark,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                          const SizedBox(height: 8),
                                          Text(
                                            flashSale[index].price,
                                            style: MyStyles.normalText.copyWith(
                                              color: MyColors.primaryBlue,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                          const SizedBox(height: 8),
                                          Text(
                                            flashSale[index].offer,
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
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 24),
                  MyButton(
                    btnText: 'Add To cart',
                    onPress: () {},
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
