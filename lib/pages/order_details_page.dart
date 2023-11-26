import 'package:dotted_dashed_line/dotted_dashed_line.dart';
import 'package:flutter/material.dart';
import 'package:lafyuu_e_commerce/utils/colors.dart';
import 'package:lafyuu_e_commerce/utils/styles.dart';
import 'package:lafyuu_e_commerce/widgets/my_button.dart';

class OrderDetailsPage extends StatefulWidget {
  const OrderDetailsPage({Key? key}) : super(key: key);

  @override
  State<OrderDetailsPage> createState() => _OrderDetailsPageState();
}

class _OrderDetailsPageState extends State<OrderDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: MyColors.netralGrey,
        ),
        title: Text(
          'Order Details',
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
              const Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image(
                    image: AssetImage(
                      'assets/icons/system icon/Tracking.png',
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
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
                              const SizedBox(width: 60),
                              const Icon(
                                Icons.favorite,
                                color: MyColors.primaryRed,
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
                              const SizedBox(width: 60),
                              const Icon(
                                Icons.favorite_outline_outlined,
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
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 24),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Shipping Details',
                    style: MyStyles.heading5.copyWith(
                      color: MyColors.netralDark,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Container(
                    height: 190,
                    decoration: BoxDecoration(
                      color: MyColors.white,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: MyColors.netralLight),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'SDG1345KJD',
                            style: MyStyles.heading5.copyWith(
                              color: MyColors.netralDark,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const SizedBox(height: 12),
                          Text(
                            'Order at Lafyuu : November ,26 2023',
                            style: MyStyles.normalText.copyWith(
                              color: MyColors.netralGrey,
                            ),
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
                                'Order Status',
                                style: MyStyles.normalText.copyWith(
                                  color: MyColors.netralGrey,
                                ),
                              ),
                              Text(
                                'Shopping',
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
                                'Items',
                                style: MyStyles.normalText.copyWith(
                                  color: MyColors.netralGrey,
                                ),
                              ),
                              Text(
                                '2 Items Purchased',
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
                                'Price',
                                style: MyStyles.normalText.copyWith(
                                  color: MyColors.netralGrey,
                                ),
                              ),
                              Text(
                                '\$299,43',
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
                ],
              ),
              const SizedBox(height: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Shipping Details',
                    style: MyStyles.heading5.copyWith(
                      color: MyColors.netralDark,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Container(
                    height: 160,
                    decoration: BoxDecoration(
                      color: MyColors.white,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: MyColors.netralLight),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Items (3)',
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
                                '\$128.00',
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
                                  color: MyColors.primaryBlue,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Text(
                                '\$799,43',
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
                ],
              ),
              const SizedBox(height: 24),
              MyButton(
                btnText: 'Notify Me',
                onPress: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
