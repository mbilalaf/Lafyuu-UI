import 'package:flutter/material.dart';
import 'package:lafyuu_e_commerce/pages/notificatiion_feed_page.dart';
import 'package:lafyuu_e_commerce/pages/notification_activity_page.dart';
import 'package:lafyuu_e_commerce/pages/notification_offer_page.dart';
import 'package:lafyuu_e_commerce/utils/colors.dart';
import 'package:lafyuu_e_commerce/utils/styles.dart';
import 'package:lafyuu_e_commerce/widgets/notification_tile.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: MyColors.netralGrey,
        ),
        title: Text(
          'Notification',
          style: MyStyles.heading4.copyWith(
            color: MyColors.netralDark,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MyListTile(
            leading: Icons.local_offer_outlined,
            tilte: 'Offer',
            trailing: '2',
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const NotificationOfferPage(),
                  ));
            },
          ),
          const SizedBox(height: 6),
          MyListTile(
            leading: Icons.feed_outlined,
            tilte: 'Feed',
            trailing: '3',
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const NotificationFeedPage(),
                  ));
            },
          ),
          const SizedBox(height: 6),
          MyListTile(
            leading: Icons.notifications_outlined,
            tilte: 'Activity',
            trailing: '3',
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const NotificationActivityPage(),
                  ));
            },
          ),
        ],
      ),
    );
  }
}
