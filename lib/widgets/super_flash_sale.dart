import 'package:flutter/material.dart';
import 'package:lafyuu_e_commerce/utils/colors.dart';
import 'package:lafyuu_e_commerce/utils/styles.dart';
import 'package:lafyuu_e_commerce/widgets/my_container.dart';

class SuperFlashSale extends StatelessWidget {
  final VoidCallback? onPress;
  const SuperFlashSale({
    super.key,
    this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        InkWell(
          onTap: onPress,
          child: const Image(
            fit: BoxFit.fitWidth,
            image: AssetImage(
              'assets/images/image 50.png',
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Super Flash Sale\n50% Off',
                style: MyStyles.heading2.copyWith(
                  color: MyColors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 30),
              const Row(
                children: [
                  MyContainer(
                    text: '08',
                    dots: ':',
                  ),
                  MyContainer(
                    text: '32',
                    dots: ':',
                  ),
                  MyContainer(
                    text: '56',
                    dots: '',
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
