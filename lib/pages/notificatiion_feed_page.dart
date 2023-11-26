import 'package:flutter/material.dart';
import 'package:lafyuu_e_commerce/utils/colors.dart';
import 'package:lafyuu_e_commerce/utils/styles.dart';

class NotificationFeedPage extends StatelessWidget {
  const NotificationFeedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: MyColors.netralGrey,
        ),
        title: Text(
          'Feed',
          style: MyStyles.heading4.copyWith(
            color: MyColors.netralDark,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Column(
        children: [
          ListTile(
            leading: const Image(
              height: 60,
              image: AssetImage('assets/images/image 46.png'),
            ),
            title: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 16),
                Text('New Product', style: MyStyles.heading5),
              ],
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 4),
                Text(
                  'Nike Air Zoom Pegasus 36 Miami - Special For your Activity',
                  style: MyStyles.normalText.copyWith(
                    fontWeight: FontWeight.w700,
                    color: MyColors.netralGrey,
                  ),
                ),
                const SizedBox(height: 4),
                const Text(
                  'June 3, 2015 5:06 PM',
                  style: MyStyles.normalText,
                ),
              ],
            ),
          ),
          ListTile(
            leading: const Image(
              height: 60,
              image: AssetImage('assets/images/image 47.png'),
            ),
            title: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 16),
                Text('New Product', style: MyStyles.heading5),
              ],
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 4),
                Text(
                  'Nike Air Zoom Pegasus 36 Miami - Special For your Activity',
                  style: MyStyles.normalText.copyWith(
                    fontWeight: FontWeight.w700,
                    color: MyColors.netralGrey,
                  ),
                ),
                const SizedBox(height: 4),
                const Text(
                  'June 3, 2015 5:06 PM',
                  style: MyStyles.normalText,
                ),
              ],
            ),
          ),
          ListTile(
            leading: const Image(
              height: 60,
              image: AssetImage('assets/images/image 49.png'),
            ),
            title: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 16),
                Text('New Product', style: MyStyles.heading5),
              ],
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 4),
                Text(
                  'Nike Air Zoom Pegasus 36 Miami - Special For your Activity',
                  style: MyStyles.normalText.copyWith(
                    fontWeight: FontWeight.w700,
                    color: MyColors.netralGrey,
                  ),
                ),
                const SizedBox(height: 4),
                const Text(
                  'June 3, 2015 5:06 PM',
                  style: MyStyles.normalText,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
