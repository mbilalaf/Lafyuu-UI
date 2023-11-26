import 'package:flutter/material.dart';
import 'package:lafyuu_e_commerce/services/models/fashions_model.dart';
import 'package:lafyuu_e_commerce/utils/colors.dart';
import 'package:lafyuu_e_commerce/utils/styles.dart';

class CategoryListPage extends StatefulWidget {
  const CategoryListPage({super.key});

  @override
  State<CategoryListPage> createState() => _CategoryListPageState();
}

class _CategoryListPageState extends State<CategoryListPage> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: MyColors.netralGrey,
        ),
        title: Text(
          'Category',
          style: MyStyles.heading4.copyWith(
            color: MyColors.netralDark,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: categoryList.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    selectedIndex = index;
                  },
                  splashColor: MyColors.primaryBlue.withOpacity(0.1),
                  child: ListTile(
                    tileColor: selectedIndex == index
                        ? MyColors.primaryBlue.withOpacity(0.2)
                        : MyColors.white,
                    leading: Image(
                      image: AssetImage(
                        categoryList[index].image,
                      ),
                    ),
                    title: Text(
                      categoryList[index].name,
                      style: MyStyles.normalText.copyWith(
                        color: categoryList[index].color,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

List<CategoryListModel> categoryList = [
  CategoryListModel(
    image: 'assets/icons/Product icon/shirt.png',
    name: 'Men Shirt',
    color: MyColors.primaryBlue,
  ),
  CategoryListModel(
    image: 'assets/icons/Product icon/man bag.png',
    name: 'Men Equipement',
  ),
  CategoryListModel(
    image: 'assets/icons/Product icon/Tshirt.png',
    name: 'Men T-Shirt',
  ),
  CategoryListModel(
    image: 'assets/icons/Product icon/man shoes.png',
    name: 'Men Shoes',
  ),
  CategoryListModel(
    image: 'assets/icons/Product icon/man pants.png',
    name: 'Men Pants',
  ),
  CategoryListModel(
    image: 'assets/icons/Product icon/man underwear.png',
    name: 'Men Underwear',
  ),
  CategoryListModel(
    image: 'assets/icons/Product icon/dress.png',
    name: 'Dress',
  ),
  CategoryListModel(
    image: 'assets/icons/Product icon/woman tshirt.png',
    name: 'Women T-Shirt',
  ),
  CategoryListModel(
    image: 'assets/icons/Product icon/woman pants.png',
    name: 'Women Pants',
  ),
  CategoryListModel(
    image: 'assets/icons/Product icon/skirt.png',
    name: 'Skirt',
  ),
  CategoryListModel(
    image: 'assets/icons/Product icon/woman bag.png',
    name: 'Women Bag',
  ),
  CategoryListModel(
    image: 'assets/icons/Product icon/woman shoes.png',
    name: 'High Heels',
  ),
  CategoryListModel(
    image: 'assets/icons/Product icon/bikini.png',
    name: 'Bikini',
  ),
];
