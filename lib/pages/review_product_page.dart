import 'package:flutter/material.dart';
import 'package:lafyuu_e_commerce/pages/write_review_page.dart';
import 'package:lafyuu_e_commerce/services/models/review_model.dart';
import 'package:lafyuu_e_commerce/utils/colors.dart';
import 'package:lafyuu_e_commerce/utils/styles.dart';
import 'package:lafyuu_e_commerce/widgets/my_button.dart';
import 'package:lafyuu_e_commerce/widgets/review.dart';
import 'package:lafyuu_e_commerce/widgets/review_card.dart';

class ReviewProductPage extends StatefulWidget {
  const ReviewProductPage({super.key});

  @override
  State<ReviewProductPage> createState() => _ReviewProductPageState();
}

class _ReviewProductPageState extends State<ReviewProductPage> {
  List<ReviewModel> review = [
    ReviewModel(text: '1', icon: Icons.star),
    ReviewModel(text: '2', icon: Icons.star),
    ReviewModel(text: '3', icon: Icons.star),
    ReviewModel(text: '4', icon: Icons.star),
    ReviewModel(text: '5', icon: Icons.star),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: MyColors.netralGrey,
        ),
        title: Text(
          '5 Review',
          style: MyStyles.heading4.copyWith(
            color: MyColors.netralDark,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 50,
                      width: 110,
                      decoration: BoxDecoration(
                        color: MyColors.primaryBlue.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: MyColors.netralLight),
                      ),
                      child: Center(
                        child: Text(
                          'All Review',
                          style: MyStyles.largeText.copyWith(
                            fontWeight: FontWeight.w700,
                            color: MyColors.primaryBlue,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    flex: 2,
                    child: SizedBox(
                      height: 50,
                      child: ListView.builder(
                        itemCount: review.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 12),
                            child: MyReview(
                              text: review[index].text,
                              icons: Icons.star,
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              const ReviewCard(
                img: 'assets/images/Ellipse 119.png',
                name: 'James Lawson',
                comment:
                    'air max are always very comfortable fit, clean and just perfect in every way. just the box was too small and scrunched the sneakers up a little bit, not sure if the box was always this small but the 90s are and will always be one of my favorites.',
                date: '21-November-2023',
                showPhotos: true,
              ),
              const SizedBox(height: 24),
              const ReviewCard(
                img: 'assets/images/Ellipse 118.png',
                name: 'Laura Octavian',
                comment:
                    'This is really amazing product, i like the design of product, I hope can buy it again!',
                date: '16-November-2023',
              ),
              const SizedBox(height: 24),
              const ReviewCard(
                img: 'assets/images/Ellipse 120.png',
                name: 'Jhonson Bridge',
                comment:
                    'air max are always very comfortable fit, clean and just perfect in every way. just the box was too small and scrunched the sneakers up a little bit',
                date: '19-November-2023',
              ),
              const SizedBox(height: 24),
              const ReviewCard(
                img: 'assets/images/Ellipse 121.png',
                name: 'Griffin Rod',
                comment:
                    'air max are always very comfortable fit, clean and just perfect in every way. just the box was too small  ',
                date: '11-November-2023',
                showPhotos: true,
              ),
              const SizedBox(height: 24),
              const ReviewCard(
                img: 'assets/images/Ellipse 119.png',
                name: 'James Lawson',
                comment:
                    'air max are always very comfortable fit, clean and just perfect in every way.',
                date: '8-November-2023',
              ),
              const SizedBox(height: 20),
              MyButton(
                btnText: 'Write Review',
                onPress: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const WriteReview(),
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
