import 'package:flutter/material.dart';
import 'package:lafyuu_e_commerce/utils/colors.dart';
import 'package:lafyuu_e_commerce/utils/styles.dart';
import 'package:lafyuu_e_commerce/widgets/filter_container.dart';
import 'package:lafyuu_e_commerce/widgets/my_button.dart';
import 'package:lafyuu_e_commerce/widgets/price_text_field.dart';

class FilterSearchPage extends StatefulWidget {
  const FilterSearchPage({super.key});

  @override
  State<FilterSearchPage> createState() => _FilterSearchPageState();
}

class _FilterSearchPageState extends State<FilterSearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        iconTheme: const IconThemeData(
          color: MyColors.netralGrey,
        ),
        title: Row(
          children: [
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(
                Icons.clear,
                color: MyColors.netralGrey,
              ),
            ),
            const SizedBox(width: 12),
            Text(
              'Filter',
              style: MyStyles.heading4.copyWith(
                color: MyColors.netralDark,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Price Range',
                style: MyStyles.heading4.copyWith(
                  color: MyColors.netralDark,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 12),
              const Row(
                children: [
                  Expanded(
                    child: PriceTextField(text: '\$1.245'),
                  ),
                  SizedBox(width: 12),
                  Expanded(
                    child: PriceTextField(text: '\$9.344'),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              const Image(
                image: AssetImage(
                  'assets/icons/system icon/Slider Price.png',
                ),
              ),
              const SizedBox(height: 4),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'MIN',
                    style: MyStyles.heading4.copyWith(
                      color: MyColors.netralGrey,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    'MAX',
                    style: MyStyles.heading4.copyWith(
                      color: MyColors.netralGrey,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              Text(
                'Condition',
                style: MyStyles.heading4.copyWith(
                  color: MyColors.netralDark,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 12),
              const Row(
                children: [
                  FilterContainer(
                    text: 'New',
                  ),
                  FilterContainer(
                    text: 'Used',
                  ),
                  FilterContainer(
                    text: 'Not Specified',
                  ),
                ],
              ),
              const SizedBox(height: 24),
              Text(
                'Buying Format',
                style: MyStyles.heading4.copyWith(
                  color: MyColors.netralDark,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 12),
              const Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      FilterContainer(
                        text: 'All Listings',
                      ),
                      FilterContainer(
                        text: 'Accept Offers',
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      FilterContainer(
                        text: 'Auction',
                      ),
                      FilterContainer(
                        text: 'Buying It Now',
                      ),
                    ],
                  ),
                  FilterContainer(
                    text: 'Classified Ads',
                    width: 125,
                  ),
                ],
              ),
              const SizedBox(height: 24),
              Text(
                'Item Location',
                style: MyStyles.heading4.copyWith(
                  color: MyColors.netralDark,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 12),
              const Column(
                children: [
                  Row(
                    children: [
                      FilterContainer(
                        text: 'US Only',
                      ),
                      FilterContainer(
                        text: 'North America',
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      FilterContainer(
                        text: 'Europe',
                      ),
                      FilterContainer(
                        text: 'Asia',
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 24),
              Text(
                'Show Only',
                style: MyStyles.heading4.copyWith(
                  color: MyColors.netralDark,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 12),
              const Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      FilterContainer(
                        text: 'Free Returns',
                      ),
                      FilterContainer(
                        text: 'Returns Accepted',
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      FilterContainer(
                        text: 'Authorized Seller',
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      FilterContainer(
                        text: 'Completed Items',
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      FilterContainer(
                        text: 'Sold Items',
                      ),
                      FilterContainer(
                        text: 'Deals & Savings',
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      FilterContainer(
                        text: 'Sale Items',
                      ),
                      FilterContainer(
                        text: 'Listed as Lots',
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      FilterContainer(
                        text: 'Search in Description',
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      FilterContainer(
                        text: 'Benefits Charity',
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      FilterContainer(
                        text: 'Authenticity Verified',
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 24),
              MyButton(
                btnText: 'Apply',
                onPress: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
