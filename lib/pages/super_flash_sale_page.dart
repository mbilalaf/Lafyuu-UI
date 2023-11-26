import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lafyuu_e_commerce/utils/colors.dart';
import 'package:lafyuu_e_commerce/utils/styles.dart';
import 'package:lafyuu_e_commerce/widgets/super_flash.dart';
import 'package:lafyuu_e_commerce/widgets/super_flash_sale.dart';

class SuperFlashSalePage extends StatelessWidget {
  const SuperFlashSalePage({super.key});

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
              'Super Flash Sale',
              style: MyStyles.heading4.copyWith(
                color: MyColors.netralDark,
                fontWeight: FontWeight.w700,
              ),
            ),
            const Icon(
              FontAwesomeIcons.magnifyingGlass,
              size: 18,
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SuperFlashSale(),
                const SizedBox(height: 16),
                SuperFlash(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
