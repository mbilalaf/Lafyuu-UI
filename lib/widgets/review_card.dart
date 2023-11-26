import 'package:custom_rating_bar/custom_rating_bar.dart';
import 'package:flutter/material.dart';
import 'package:lafyuu_e_commerce/utils/colors.dart';
import 'package:lafyuu_e_commerce/utils/styles.dart';

class ReviewCard extends StatelessWidget {
  final String img;
  final String name;
  final String date;
  final String comment;
  final bool? showPhotos;

  const ReviewCard({
    super.key,
    required this.img,
    required this.name,
    required this.comment,
    required this.date,
    this.showPhotos = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            CircleAvatar(
              radius: 32,
              backgroundImage: AssetImage(
                img,
              ),
            ),
            const SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: MyStyles.heading5.copyWith(
                    fontWeight: FontWeight.w700,
                    color: MyColors.netralDark,
                  ),
                ),
                const SizedBox(height: 4),
                RatingBar(
                  filledIcon: Icons.star,
                  emptyIcon: Icons.star_border,
                  size: 22,
                  emptyColor: MyColors.netralGrey.withOpacity(0.6),
                  onRatingChanged: (value) => debugPrint('$value'),
                  initialRating: 3,
                  maxRating: 5,
                ),
              ],
            ),
          ],
        ),
        const SizedBox(height: 16),
        Text(
          comment,
          style: MyStyles.normalText.copyWith(
            color: MyColors.netralGrey,
          ),
        ),
        const SizedBox(height: 16),
        if (showPhotos == false)
          Text(
            date,
            style: MyStyles.normalText.copyWith(
              color: MyColors.netralGrey,
            ),
          ),
        const SizedBox(height: 16),
        if (showPhotos == true)
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                children: [
                  Image(
                    height: 72,
                    width: 72,
                    image: AssetImage('assets/images/image 57.png'),
                  ),
                  SizedBox(width: 12),
                  Image(
                    height: 72,
                    width: 72,
                    image: AssetImage('assets/images/Rectangle 428.png'),
                  ),
                  SizedBox(width: 12),
                  Image(
                    height: 72,
                    width: 72,
                    image: AssetImage('assets/images/Rectangle 429.png'),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Text(
                date,
                style: MyStyles.normalText.copyWith(
                  color: MyColors.netralGrey,
                ),
              ),
            ],
          ),
      ],
    );
  }
}
