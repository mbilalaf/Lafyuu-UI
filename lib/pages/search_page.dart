import 'package:flutter/material.dart';
import 'package:lafyuu_e_commerce/pages/explore_page.dart';
import 'package:lafyuu_e_commerce/pages/product_not_found_page.dart';
import 'package:lafyuu_e_commerce/pages/search_result_page.dart';
import 'package:lafyuu_e_commerce/utils/colors.dart';
import 'package:lafyuu_e_commerce/utils/styles.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

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
                      suffixIcon: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const ExplorePage(),
                              ));
                        },
                        child: const Icon(
                          Icons.clear_outlined,
                          color: MyColors.netralGrey,
                          size: 20,
                        ),
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
              const Expanded(
                child: SizedBox(
                  child: Icon(
                    Icons.mic,
                    color: MyColors.netralGrey,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SearchResultPage(),
                    ));
              },
              child: SizedBox(
                height: 50,
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.only(top: 16, bottom: 16),
                  child: Text(
                    'Nike Air Max',
                    style: MyStyles.normalText.copyWith(
                      color: MyColors.netralGrey,
                    ),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ProductNotFoundPage(),
                    ));
              },
              child: SizedBox(
                height: 50,
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.only(top: 16, bottom: 16),
                  child: Text(
                    'Nike Air Vapormax 360',
                    style: MyStyles.normalText.copyWith(
                      color: MyColors.netralGrey,
                    ),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ProductNotFoundPage(),
                    ));
              },
              child: SizedBox(
                height: 50,
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.only(top: 16, bottom: 16),
                  child: Text(
                    'Nike Air Max 270 React ENG',
                    style: MyStyles.normalText.copyWith(
                      color: MyColors.netralGrey,
                    ),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ProductNotFoundPage(),
                    ));
              },
              child: SizedBox(
                height: 50,
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.only(top: 16, bottom: 16),
                  child: Text(
                    'Nike Air Max 270 React',
                    style: MyStyles.normalText.copyWith(
                      color: MyColors.netralGrey,
                    ),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ProductNotFoundPage(),
                    ));
              },
              child: SizedBox(
                height: 50,
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.only(top: 16, bottom: 16),
                  child: Text(
                    'Nike Air VaporMax Flyknit 3',
                    style: MyStyles.normalText.copyWith(
                      color: MyColors.netralGrey,
                    ),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ProductNotFoundPage(),
                    ));
              },
              child: SizedBox(
                height: 50,
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.only(top: 16, bottom: 16),
                  child: Text(
                    'Nike Air Max 97 Utility',
                    style: MyStyles.normalText.copyWith(
                      color: MyColors.netralGrey,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
