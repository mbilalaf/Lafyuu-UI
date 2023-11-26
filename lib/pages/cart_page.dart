import 'package:dotted_dashed_line/dotted_dashed_line.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lafyuu_e_commerce/pages/ship_to_page.dart';
import 'package:lafyuu_e_commerce/utils/colors.dart';
import 'package:lafyuu_e_commerce/utils/styles.dart';
import 'package:lafyuu_e_commerce/widgets/my_button.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  int itemCount = 1;

  void incrementItem() {
    setState(() {
      itemCount++;
    });
  }

  void decrementItem() {
    if (itemCount > 1) {
      setState(() {
        itemCount--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'Your Cart',
          style: MyStyles.heading4.copyWith(
            color: MyColors.netralDark,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 104,
                decoration: BoxDecoration(
                  color: MyColors.white,
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: MyColors.netralLight),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    children: [
                      const Image(
                        image: AssetImage(
                          'assets/images/image 47.png',
                        ),
                      ),
                      const SizedBox(width: 12),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Nike Air Zoom Pegasus\n36 Miami',
                                style: MyStyles.normalText.copyWith(
                                  color: MyColors.netralDark,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              const SizedBox(width: 40),
                              const Icon(
                                Icons.favorite,
                                color: MyColors.primaryRed,
                              ),
                              const SizedBox(width: 8),
                              const Icon(
                                Icons.delete_outline,
                                color: MyColors.netralGrey,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '\$299,43',
                                style: MyStyles.normalText.copyWith(
                                  color: MyColors.primaryBlue,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              const SizedBox(width: 70),
                              Container(
                                height: 24,
                                width: 40,
                                decoration: BoxDecoration(
                                  color: MyColors.white,
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(5),
                                    bottomLeft: Radius.circular(5),
                                  ),
                                  border:
                                      Border.all(color: MyColors.netralLight),
                                ),
                                child: InkWell(
                                  onTap: decrementItem,
                                  child: const Icon(
                                    FontAwesomeIcons.minus,
                                    color: MyColors.netralGrey,
                                    size: 16,
                                  ),
                                ),
                              ),
                              Container(
                                height: 24,
                                width: 40,
                                decoration: BoxDecoration(
                                  color: MyColors.white,
                                  border:
                                      Border.all(color: MyColors.netralLight),
                                ),
                                child: Center(
                                  child: Text(
                                    '$itemCount',
                                    style: MyStyles.normalText.copyWith(
                                      color: MyColors.netralGrey,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                height: 24,
                                width: 40,
                                decoration: BoxDecoration(
                                  color: MyColors.white,
                                  borderRadius: const BorderRadius.only(
                                    topRight: Radius.circular(5),
                                    bottomRight: Radius.circular(5),
                                  ),
                                  border:
                                      Border.all(color: MyColors.netralLight),
                                ),
                                child: InkWell(
                                  onTap: incrementItem,
                                  child: const Icon(
                                    FontAwesomeIcons.plus,
                                    color: MyColors.netralGrey,
                                    size: 16,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Container(
                height: 104,
                decoration: BoxDecoration(
                  color: MyColors.white,
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: MyColors.netralLight),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    children: [
                      const Image(
                        image: AssetImage(
                          'assets/images/image 49.png',
                        ),
                      ),
                      const SizedBox(width: 12),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Nike Air Zoom Pegasus\n36 Miami',
                                style: MyStyles.normalText.copyWith(
                                  color: MyColors.netralDark,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              const SizedBox(width: 40),
                              const Icon(
                                Icons.favorite_border,
                                color: MyColors.netralGrey,
                              ),
                              const SizedBox(width: 8),
                              const Icon(
                                Icons.delete_outline,
                                color: MyColors.netralGrey,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '\$299,43',
                                style: MyStyles.normalText.copyWith(
                                  color: MyColors.primaryBlue,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              const SizedBox(width: 70),
                              Container(
                                height: 24,
                                width: 40,
                                decoration: BoxDecoration(
                                  color: MyColors.white,
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(5),
                                    bottomLeft: Radius.circular(5),
                                  ),
                                  border:
                                      Border.all(color: MyColors.netralLight),
                                ),
                                child: InkWell(
                                  onTap: decrementItem,
                                  child: const Icon(
                                    FontAwesomeIcons.minus,
                                    color: MyColors.netralGrey,
                                    size: 16,
                                  ),
                                ),
                              ),
                              Container(
                                height: 24,
                                width: 40,
                                decoration: BoxDecoration(
                                  color: MyColors.white,
                                  border:
                                      Border.all(color: MyColors.netralLight),
                                ),
                                child: Center(
                                  child: Text(
                                    '$itemCount',
                                    style: MyStyles.normalText.copyWith(
                                      color: MyColors.netralGrey,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                height: 24,
                                width: 40,
                                decoration: BoxDecoration(
                                  color: MyColors.white,
                                  borderRadius: const BorderRadius.only(
                                    topRight: Radius.circular(5),
                                    bottomRight: Radius.circular(5),
                                  ),
                                  border:
                                      Border.all(color: MyColors.netralLight),
                                ),
                                child: InkWell(
                                  onTap: incrementItem,
                                  child: const Icon(
                                    FontAwesomeIcons.plus,
                                    color: MyColors.netralGrey,
                                    size: 16,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 32),
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: SizedBox(
                      height: 56,
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: const BorderSide(
                              color: MyColors.netralLight,
                            ),
                          ),
                          hintText: 'Enter Cupon Code',
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
                  Expanded(
                    child: Container(
                      height: 56,
                      decoration: BoxDecoration(
                        color: MyColors.primaryBlue,
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(5),
                          bottomRight: Radius.circular(5),
                        ),
                        border: Border.all(color: MyColors.netralLight),
                      ),
                      child: Center(
                        child: Text(
                          'Apply',
                          style: MyStyles.mediumText.copyWith(
                            fontWeight: FontWeight.w700,
                            color: MyColors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Container(
                height: 164,
                decoration: BoxDecoration(
                  color: MyColors.white,
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: MyColors.netralLight),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Items ($itemCount)',
                            style: MyStyles.normalText.copyWith(
                              color: MyColors.netralGrey,
                            ),
                          ),
                          Text(
                            '\$598.86',
                            style: MyStyles.normalText.copyWith(
                              color: MyColors.netralDark,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 12),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Shipping',
                            style: MyStyles.normalText.copyWith(
                              color: MyColors.netralGrey,
                            ),
                          ),
                          Text(
                            '\$40.00',
                            style: MyStyles.normalText.copyWith(
                              color: MyColors.netralDark,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 12),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Import Charges',
                            style: MyStyles.normalText.copyWith(
                              color: MyColors.netralGrey,
                            ),
                          ),
                          Text(
                            '\$140.00',
                            style: MyStyles.normalText.copyWith(
                              color: MyColors.netralDark,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 12),
                      DottedDashedLine(
                        height: 0,
                        width: MediaQuery.of(context).size.width,
                        axis: Axis.horizontal,
                        dashColor: MyColors.netralGrey.withOpacity(0.5),
                      ),
                      const SizedBox(height: 12),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Total Price',
                            style: MyStyles.normalText.copyWith(
                              color: MyColors.netralDark,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            '\$766.86',
                            style: MyStyles.normalText.copyWith(
                              color: MyColors.primaryBlue,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16),
              MyButton(
                btnText: 'Check Out',
                onPress: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ShipToPage(),
                      ));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
