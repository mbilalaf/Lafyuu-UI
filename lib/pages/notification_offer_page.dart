import 'package:flutter/material.dart';
import 'package:lafyuu_e_commerce/utils/colors.dart';
import 'package:lafyuu_e_commerce/utils/styles.dart';
import 'package:lafyuu_e_commerce/widgets/notification_card.dart';

class NotificationOfferPage extends StatelessWidget {
  const NotificationOfferPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: MyColors.netralGrey,
        ),
        title: Text(
          'Offer',
          style: MyStyles.heading4.copyWith(
            color: MyColors.netralDark,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Column(
          children: [
            NotificationCard(
              leading: Icon(
                Icons.local_offer_outlined,
                color: MyColors.primaryBlue,
              ),
              title: 'The Best Title',
              subTitle:
                  'Culpa cillum consectetur labore nulla nulla\nmagna irure. Id veniam culpa officia aute dolor\namet deserunt ex proident commodo',
              date: 'October 30, 2023 1:01 PM',
            ),
            SizedBox(height: 16),
            NotificationCard(
              leading: Icon(
                Icons.local_offer_outlined,
                color: MyColors.primaryBlue,
              ),
              title: 'SUMMER OFFER 98% Cashback',
              subTitle:
                  'Culpa cillum consectetur labore nulla nulla\nmagna irure. Id veniam culpa officia aute dolor',
              date: 'November 04, 2014 7:32 PM',
            ),
            SizedBox(height: 16),
            NotificationCard(
              leading: Icon(
                Icons.local_offer_outlined,
                color: MyColors.primaryBlue,
              ),
              title: 'Special Offer 25% OFF',
              subTitle:
                  'Culpa cillum consectetur labore nulla nulla\nmagna irure. Id veniam culpa officia aute dolor',
              date: 'November 04, 2014 7:32 PM',
            ),
          ],
        ),
      ),
    );
  }
}
