import 'package:flutter/material.dart';
import 'package:lafyuu_e_commerce/pages/birthday_page.dart';
import 'package:lafyuu_e_commerce/pages/change_name_page.dart';
import 'package:lafyuu_e_commerce/pages/change_pasword_page.dart';
import 'package:lafyuu_e_commerce/pages/email_page.dart';
import 'package:lafyuu_e_commerce/pages/gender_page.dart';
import 'package:lafyuu_e_commerce/pages/phone_no_page.dart';
import 'package:lafyuu_e_commerce/utils/colors.dart';
import 'package:lafyuu_e_commerce/utils/styles.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: MyColors.netralGrey,
        ),
        title: Text(
          'Profile',
          style: MyStyles.heading4.copyWith(
            color: MyColors.netralDark,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ChangeNamePage(),
                ),
              );
            },
            child: ListTile(
              leading: const CircleAvatar(
                radius: 32,
                backgroundImage: AssetImage(
                  'assets/images/Ellipse 119.png',
                ),
              ),
              title: Text(
                'Maximus Gold',
                style: MyStyles.heading5.copyWith(
                  color: MyColors.netralDark,
                  fontWeight: FontWeight.w700,
                ),
              ),
              subtitle: Text(
                '@bafridi',
                style: MyStyles.normalText.copyWith(
                  color: MyColors.netralGrey,
                ),
              ),
            ),
          ),
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const GenderPage(),
                  ),
                );
              },
              child: SizedBox(
                height: 54,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Image(
                          height: 24,
                          color: MyColors.primaryBlue,
                          image: AssetImage(
                            'assets/icons/system icon/Gender.png',
                          ),
                        ),
                        const SizedBox(width: 16),
                        Text(
                          'Gender',
                          style: MyStyles.mediumText.copyWith(
                            color: MyColors.netralDark,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'Male',
                          style: MyStyles.normalText.copyWith(
                            color: MyColors.netralGrey,
                          ),
                        ),
                        const SizedBox(width: 16),
                        const Image(
                          height: 24,
                          image: AssetImage(
                            'assets/icons/system icon/Right.png',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const BirthdayPage(),
                  ),
                );
              },
              child: SizedBox(
                height: 54,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Image(
                          height: 24,
                          color: MyColors.primaryBlue,
                          image: AssetImage(
                            'assets/icons/system icon/Date.png',
                          ),
                        ),
                        const SizedBox(width: 16),
                        Text(
                          'Birthday',
                          style: MyStyles.mediumText.copyWith(
                            color: MyColors.netralDark,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          '21-04-2001',
                          style: MyStyles.normalText.copyWith(
                            color: MyColors.netralGrey,
                          ),
                        ),
                        const SizedBox(width: 16),
                        const Image(
                          height: 24,
                          image: AssetImage(
                            'assets/icons/system icon/Right.png',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const EmailPage(),
                  ),
                );
              },
              child: SizedBox(
                height: 54,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Image(
                          height: 24,
                          color: MyColors.primaryBlue,
                          image: AssetImage(
                            'assets/icons/system icon/Message.png',
                          ),
                        ),
                        const SizedBox(width: 16),
                        Text(
                          'Email',
                          style: MyStyles.mediumText.copyWith(
                            color: MyColors.netralDark,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'bafridi899@gmail.com',
                          style: MyStyles.normalText.copyWith(
                            color: MyColors.netralGrey,
                          ),
                        ),
                        const SizedBox(width: 16),
                        const Image(
                          height: 24,
                          image: AssetImage(
                            'assets/icons/system icon/Right.png',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PhoneNoPage(),
                  ),
                );
              },
              child: SizedBox(
                height: 54,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Image(
                          height: 24,
                          color: MyColors.primaryBlue,
                          image: AssetImage(
                            'assets/icons/system icon/Phone.png',
                          ),
                        ),
                        const SizedBox(width: 16),
                        Text(
                          'Phone Number',
                          style: MyStyles.mediumText.copyWith(
                            color: MyColors.netralDark,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          '+92 318 9022856',
                          style: MyStyles.normalText.copyWith(
                            color: MyColors.netralGrey,
                          ),
                        ),
                        const SizedBox(width: 16),
                        const Image(
                          height: 24,
                          image: AssetImage(
                            'assets/icons/system icon/Right.png',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ChangePasswordPage(),
                  ),
                );
              },
              child: SizedBox(
                height: 54,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Image(
                          height: 24,
                          color: MyColors.primaryBlue,
                          image: AssetImage(
                            'assets/icons/system icon/Gender.png',
                          ),
                        ),
                        const SizedBox(width: 16),
                        Text(
                          'Change Password',
                          style: MyStyles.mediumText.copyWith(
                            color: MyColors.netralDark,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          '..........',
                          style: MyStyles.heading3.copyWith(
                            color: MyColors.netralGrey,
                          ),
                        ),
                        const SizedBox(width: 16),
                        const Image(
                          height: 24,
                          image: AssetImage(
                            'assets/icons/system icon/Right.png',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
