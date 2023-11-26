import 'package:flutter/material.dart';
import 'package:lafyuu_e_commerce/utils/colors.dart';
import 'package:lafyuu_e_commerce/utils/styles.dart';
import 'package:lafyuu_e_commerce/widgets/notification_card.dart';

class NotificationActivityPage extends StatelessWidget {
  const NotificationActivityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: MyColors.netralGrey,
        ),
        title: Text(
          'Activity',
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
                Icons.trending_up_outlined,
                color: MyColors.primaryBlue,
              ),
              title: 'Transaction Nike Air Zoom Product',
              subTitle:
                  'Culpa cillum consectetur labore nulla nulla\nmagna irure. Id veniam culpa officia aute dolor\namet deserunt ex proident commodo',
              date: 'October 30, 2023 1:01 PM',
            ),
            SizedBox(height: 16),
            NotificationCard(
              leading: Icon(
                Icons.trending_up_outlined,
                color: MyColors.primaryBlue,
              ),
              title: 'Transaction Nike Air Zoom Pegasus 36\nMiami',
              subTitle:
                  'Culpa cillum consectetur labore nulla nulla\nmagna irure. Id veniam culpa officia aute dolor',
              date: 'November 04, 2014 7:32 PM',
            ),
            SizedBox(height: 16),
            NotificationCard(
              leading: Icon(
                Icons.trending_up_outlined,
                color: MyColors.primaryBlue,
              ),
              title: 'Transaction Nike Air Max',
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
