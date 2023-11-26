import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lafyuu_e_commerce/pages/favorite_product_page.dart';
import 'package:lafyuu_e_commerce/utils/colors.dart';
import 'package:lafyuu_e_commerce/widgets/custom_textfield.dart';

class CustomAppBar extends StatelessWidget {
  final VoidCallback? onNotificationTap;
  const CustomAppBar({
    super.key,
    this.onNotificationTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          const Expanded(
            flex: 5,
            child: SizedBox(
              child: CustomTextField(
                text: 'search',
                prefixIcon: FontAwesomeIcons.magnifyingGlass,
                sufixIcon: Icons.clear_outlined,
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
                    child: const Icon(
                      Icons.favorite_border_outlined,
                      color: MyColors.netralGrey,
                    ),
                  ),
                  InkWell(
                    onTap: onNotificationTap,
                    child: const Icon(
                      Icons.notifications_none,
                      color: MyColors.netralGrey,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
