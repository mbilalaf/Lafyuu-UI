import 'package:flutter/material.dart';
import 'package:lafyuu_e_commerce/services/models/fashions_model.dart';
import 'package:lafyuu_e_commerce/utils/colors.dart';
import 'package:lafyuu_e_commerce/utils/styles.dart';

class ShortByPage extends StatefulWidget {
  const ShortByPage({super.key});

  @override
  State<ShortByPage> createState() => _ShortByPageState();
}

class _ShortByPageState extends State<ShortByPage> {
  int selectedIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: MyColors.netralGrey,
        ),
        title: Text(
          'Short By',
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
              itemCount: shortByList.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    selectedIndex = index;
                  },
                  splashColor: MyColors.primaryBlue.withOpacity(0.2),
                  child: ListTile(
                    tileColor: selectedIndex == index
                        ? MyColors.primaryBlue.withOpacity(0.2)
                        : MyColors.white,
                    title: Text(
                      shortByList[index].text,
                      style: MyStyles.normalText.copyWith(
                        color: shortByList[index].color,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

List<ShortByModel> shortByList = [
  ShortByModel(text: 'Best Match', color: MyColors.primaryBlue),
  ShortByModel(text: 'Time: ending soonest'),
  ShortByModel(text: 'Time: newly listed'),
  ShortByModel(text: 'Price + Shipping: lowest first'),
  ShortByModel(text: 'Price + Shipping: highest first'),
  ShortByModel(text: 'Distance: nearest first'),
];
