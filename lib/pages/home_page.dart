import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lafyuu_e_commerce/pages/favorite_product_page.dart';
import 'package:lafyuu_e_commerce/pages/notification_page.dart';
import 'package:lafyuu_e_commerce/pages/super_flash_sale_page.dart';
import 'package:lafyuu_e_commerce/services/models/category_model.dart';
import 'package:lafyuu_e_commerce/services/models/flash_sale_model.dart';
import 'package:lafyuu_e_commerce/services/models/mega_sale_model.dart';
import 'package:lafyuu_e_commerce/utils/colors.dart';
import 'package:lafyuu_e_commerce/utils/styles.dart';
import 'package:lafyuu_e_commerce/widgets/custom_textfield.dart';
import 'package:lafyuu_e_commerce/widgets/super_flash.dart';
import 'package:lafyuu_e_commerce/widgets/super_flash_sale.dart';
import 'package:lafyuu_e_commerce/widgets/text_style.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController controller = PageController(viewportFraction: 0.8);

  List<Categories> categories = [
    Categories('assets/icons/Product icon/shirt.png', 'Man Shirt'),
    Categories('assets/icons/Product icon/dress.png', 'Dress'),
    Categories('assets/icons/Product icon/man bag.png', 'Man Work\nEquipment'),
    Categories('assets/icons/Product icon/woman bag.png', 'Woman Bag'),
    Categories('assets/icons/Product icon/man shoes.png', 'Man Shoes'),
    Categories('assets/icons/Product icon/woman tshirt.png', 'Woman\nT-Shirt'),
    Categories('assets/icons/Product icon/man pants.png', 'Man Pants'),
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
    return Scaffold(
      backgroundColor: MyColors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: MyColors.white,
        title: Row(
          children: [
            const Expanded(
              flex: 5,
              child: SizedBox(
                child: CustomTextField(
                  text: 'search',
                  prefixIcon: FontAwesomeIcons.magnifyingGlass,
                ),
              ),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: SizedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const FavoriteProductPage(),
                          ),
                        );
                      },
                      child: const Image(
                        image: AssetImage('assets/icons/system icon/love.png'),
                        height: 24,
                        width: 24,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const NotificationPage(),
                            ));
                      },
                      child: const Image(
                        image: AssetImage(
                          'assets/icons/system icon/Notification.png',
                        ),
                        height: 24,
                        width: 24,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 30,
                right: 16,
                left: 16,
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 200,
                    child: ListView.builder(
                      itemCount: 5,
                      scrollDirection: Axis.horizontal,
                      controller: controller,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 16),
                          child: SuperFlashSale(
                            onPress: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const SuperFlashSalePage(),
                                ),
                              );
                            },
                          ),
                        );
                      },
                    ),
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
                  const SizedBox(height: 24),

                  // Category section
                  const MyText(
                    textOne: 'Category',
                    textTwo: 'More Category',
                  ),
                  const SizedBox(height: 12),
                  SizedBox(
                    height: 108,
                    child: ListView.builder(
                      itemCount: categories.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 12),
                              child: Container(
                                height: 70,
                                width: 70,
                                decoration: BoxDecoration(
                                  color: MyColors.white,
                                  borderRadius: BorderRadius.circular(50),
                                  border: Border.all(
                                    color: MyColors.netralLight,
                                  ),
                                ),
                                child: Image(
                                  image: AssetImage(
                                    categories[index].img,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              categories[index].name,
                              style: MyStyles.mediumCaption.copyWith(
                                color: MyColors.netralGrey,
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 24),

                  // Flash sale section
                  const MyText(
                    textOne: 'Flash sale',
                    textTwo: 'More',
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

                  // Mega sale section
                  const MyText(
                    textOne: 'Mega sale',
                    textTwo: 'More',
                  ),
                  const SizedBox(height: 12),
                  SizedBox(
                    height: 238,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: megaSale.length,
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
                                            megaSale[index].img,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 8),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 16),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              megaSale[index].title,
                                              style:
                                                  MyStyles.normalText.copyWith(
                                                color: MyColors.netralDark,
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                            const SizedBox(height: 8),
                                            Text(
                                              megaSale[index].price,
                                              style:
                                                  MyStyles.normalText.copyWith(
                                                color: MyColors.primaryBlue,
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                            const SizedBox(height: 8),
                                            Row(
                                              children: [
                                                Text(
                                                  megaSale[index].discount,
                                                  style: MyStyles.mediumCaption
                                                      .copyWith(
                                                    color: MyColors.netralGrey,
                                                    fontWeight: FontWeight.w700,
                                                    decoration: TextDecoration
                                                        .lineThrough,
                                                  ),
                                                ),
                                                const SizedBox(width: 8),
                                                Text(
                                                  megaSale[index].offer,
                                                  style: MyStyles.normalText
                                                      .copyWith(
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
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 16),
                  Stack(
                    children: [
                      const Image(
                        image: AssetImage(
                          'assets/images/image 51.png',
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 50),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Recomended\nProduct',
                                textAlign: TextAlign.start,
                                style: MyStyles.heading2.copyWith(
                                  color: MyColors.white,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              const SizedBox(height: 30),
                              Text(
                                'We recomend the best for you',
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
                  const SizedBox(height: 16),
                  SuperFlash(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
