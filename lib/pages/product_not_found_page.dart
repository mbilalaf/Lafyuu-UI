import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iconsax/iconsax.dart';
import 'package:lafyuu_e_commerce/pages/category_list_page.dart';
import 'package:lafyuu_e_commerce/pages/filter_search_page.dart';
import 'package:lafyuu_e_commerce/pages/short_by_page.dart';
import 'package:lafyuu_e_commerce/utils/colors.dart';
import 'package:lafyuu_e_commerce/utils/styles.dart';
import 'package:lafyuu_e_commerce/widgets/bottom_nav_bar.dart';
import 'package:lafyuu_e_commerce/widgets/my_button.dart';

class ProductNotFoundPage extends StatelessWidget {
  const ProductNotFoundPage({super.key});

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
                  '0 Results',
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
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const CategoryListPage(),
                            ));
                      },
                      child: const Image(
                        height: 24,
                        image: AssetImage(
                          'assets/icons/system icon/bottom.png',
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 180),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Image(
                    image: AssetImage(
                      'assets/icons/system icon/not found.png',
                    ),
                  ),
                  Text(
                    'Product Not Found',
                    style: MyStyles.heading2.copyWith(
                      color: MyColors.netralDark,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'thank you for shopping using lafyuu',
                    style: MyStyles.normalText.copyWith(
                      color: MyColors.netralGrey,
                    ),
                  ),
                  const SizedBox(height: 16),
                  MyButton(
                    btnText: 'Back To Home',
                    onPress: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const BottomNavBar(),
                          ));
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
