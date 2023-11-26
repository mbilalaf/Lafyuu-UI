import 'package:flutter/material.dart';
import 'package:lafyuu_e_commerce/pages/favorite_product_page.dart';
import 'package:lafyuu_e_commerce/pages/notification_page.dart';
import 'package:lafyuu_e_commerce/pages/search_page.dart';
import 'package:lafyuu_e_commerce/services/models/fashions_model.dart';
import 'package:lafyuu_e_commerce/utils/colors.dart';
import 'package:lafyuu_e_commerce/utils/styles.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: MyColors.white,
        title: Row(
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
                        color: MyColors.netralLight,
                      ),
                    ),
                    prefixIcon: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SearchPage(),
                          ),
                        );
                      },
                      child: const Icon(
                        Icons.search,
                        color: MyColors.netralGrey,
                        size: 20,
                      ),
                    ),
                    hintText: 'Search',
                    hintStyle: MyStyles.normalText.copyWith(
                      color: MyColors.netralGrey,
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: MyColors.primaryBlue,
                      ),
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: MyColors.netralLight,
                      ),
                    ),
                    fillColor: MyColors.white,
                    filled: true,
                  ),
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 16, right: 16, left: 16, bottom: 12),
            child: Text(
              'Men Fashion',
              style: MyStyles.heading5,
            ),
          ),
          Expanded(
            flex: 2,
            child: GridView.builder(
              itemCount: menFashion.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                childAspectRatio: 70 / 80,
                mainAxisSpacing: 16,
              ),
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Container(
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
                          menFashion[index].image,
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      menFashion[index].name,
                      textAlign: TextAlign.center,
                      style: MyStyles.mediumCaption.copyWith(
                        color: MyColors.netralGrey,
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 16, right: 16, left: 16, bottom: 12),
            child: Text(
              'Women Fashion',
              style: MyStyles.heading5,
            ),
          ),
          Expanded(
            flex: 3,
            child: GridView.builder(
              itemCount: womenFashion.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                childAspectRatio: 70 / 80,
                mainAxisSpacing: 16,
              ),
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Container(
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
                          womenFashion[index].image,
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      womenFashion[index].name,
                      textAlign: TextAlign.center,
                      style: MyStyles.mediumCaption.copyWith(
                        color: MyColors.netralGrey,
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

List<FashionModel> menFashion = [
  FashionModel(image: 'assets/icons/Product icon/shirt.png', name: 'Men Shirt'),
  FashionModel(
      image: 'assets/icons/Product icon/man bag.png', name: 'Men\nEquipement'),
  FashionModel(
      image: 'assets/icons/Product icon/Tshirt.png', name: 'Men T-Shirt'),
  FashionModel(
      image: 'assets/icons/Product icon/man shoes.png', name: 'Men Shoes'),
  FashionModel(
      image: 'assets/icons/Product icon/man pants.png', name: 'Men Pants'),
  FashionModel(
      image: 'assets/icons/Product icon/man underwear.png',
      name: 'Men\nUnderwear'),
];

List<FashionModel> womenFashion = [
  FashionModel(image: 'assets/icons/Product icon/dress.png', name: 'Dress'),
  FashionModel(
      image: 'assets/icons/Product icon/woman tshirt.png',
      name: 'Women\nT-Shirt'),
  FashionModel(
      image: 'assets/icons/Product icon/woman pants.png', name: 'Women\nPants'),
  FashionModel(image: 'assets/icons/Product icon/skirt.png', name: 'Skirt'),
  FashionModel(
      image: 'assets/icons/Product icon/woman bag.png', name: 'Women Bag'),
  FashionModel(
      image: 'assets/icons/Product icon/woman shoes.png', name: 'High Heels'),
  FashionModel(image: 'assets/icons/Product icon/bikini.png', name: 'Bikini'),
];
