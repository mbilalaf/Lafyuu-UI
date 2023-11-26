import 'package:dotted_dashed_line/dotted_dashed_line.dart';
import 'package:flutter/material.dart';
import 'package:lafyuu_e_commerce/pages/order_details_page.dart';
import 'package:lafyuu_e_commerce/utils/colors.dart';
import 'package:lafyuu_e_commerce/utils/styles.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({super.key});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: MyColors.netralGrey,
        ),
        title: Text(
          'Order',
          style: MyStyles.heading4.copyWith(
            color: MyColors.netralDark,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const OrderDetailsPage(),
                    ));
              },
              child: Container(
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
                        'LQNSU346JK',
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
      ),
    );
  }
}
