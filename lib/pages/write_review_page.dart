import 'package:custom_rating_bar/custom_rating_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lafyuu_e_commerce/utils/colors.dart';
import 'package:lafyuu_e_commerce/utils/styles.dart';

class WriteReview extends StatelessWidget {
  const WriteReview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: MyColors.netralGrey,
        ),
        title: Text(
          'Write Review',
          style: MyStyles.heading4.copyWith(
            color: MyColors.netralDark,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Please write Overall level of satisfaction with your shipping / Delivery Service',
              style: MyStyles.heading5.copyWith(
                color: MyColors.netralDark,
              ),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                RatingBar(
                  filledIcon: Icons.star,
                  emptyIcon: Icons.star_border,
                  size: 32,
                  emptyColor: MyColors.netralGrey.withOpacity(0.6),
                  onRatingChanged: (value) => debugPrint('$value'),
                  initialRating: 3,
                  maxRating: 5,
                ),
                const SizedBox(width: 16),
                Text(
                  '3/5',
                  style: MyStyles.heading5.copyWith(
                    color: MyColors.netralGrey,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Text(
              'Write Your Review',
              style: MyStyles.heading5.copyWith(
                color: MyColors.netralDark,
              ),
            ),
            const SizedBox(height: 12),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: MyColors.netralLight),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                child: TextFormField(
                  minLines: 8,
                  keyboardType: TextInputType.multiline,
                  style: MyStyles.normalText.copyWith(
                    fontWeight: FontWeight.w700,
                    color: MyColors.netralGrey,
                  ),
                  decoration: InputDecoration.collapsed(
                    hintText: "Enter your text here",
                    hintStyle: MyStyles.normalText.copyWith(
                      color: MyColors.netralGrey,
                    ),
                  ),
                  maxLines: null,
                  cursorColor: MyColors.primaryBlue,
                ),
              ),
            ),
            const SizedBox(height: 24),
            Text(
              'Add photo',
              style: MyStyles.heading5.copyWith(
                color: MyColors.netralDark,
              ),
            ),
            const SizedBox(height: 12),
            Container(
              height: 72,
              width: 72,
              decoration: BoxDecoration(
                border: Border.all(color: MyColors.netralLight),
                borderRadius: BorderRadius.circular(5),
              ),
              child: const Icon(
                FontAwesomeIcons.plus,
                color: MyColors.netralGrey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
