import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lafyuu_e_commerce/auth/login_page.dart';
import 'package:lafyuu_e_commerce/utils/colors.dart';
import 'package:lafyuu_e_commerce/utils/styles.dart';
import 'package:lafyuu_e_commerce/widgets/bottom_nav_bar.dart';
import 'package:lafyuu_e_commerce/widgets/custom_textfield.dart';
import 'package:lafyuu_e_commerce/widgets/my_button.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Image(
                    image: AssetImage('assets/images/vector.png'),
                    height: 72,
                    width: 72,
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'Let\'s Get Started',
                    style: MyStyles.heading4.copyWith(
                      color: MyColors.netralDark,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Create new account',
                    style: MyStyles.normalText.copyWith(
                      color: MyColors.netralGrey,
                    ),
                  ),
                  const SizedBox(height: 28),
                  const CustomTextField(
                    text: 'Full Name',
                    prefixIcon: FontAwesomeIcons.user,
                  ),
                  const SizedBox(height: 8),
                  const CustomTextField(
                    text: 'Your Email',
                    prefixIcon: Icons.email_outlined,
                  ),
                  const SizedBox(height: 8),
                  const CustomTextField(
                    text: 'Your Password',
                    prefixIcon: Icons.lock_outline,
                    sufixIcon: Icons.remove_red_eye_outlined,
                  ),
                  const SizedBox(height: 8),
                  const CustomTextField(
                    text: 'Confirm Password',
                    prefixIcon: Icons.lock_outline,
                    sufixIcon: Icons.remove_red_eye_outlined,
                  ),
                  const SizedBox(height: 16),
                  MyButton(
                    btnText: 'Register',
                    onPress: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const BottomNavBar();
                      }));
                    },
                  ),
                  const SizedBox(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already have an account? ',
                        style: MyStyles.normalText.copyWith(
                          fontWeight: FontWeight.w700,
                          color: MyColors.netralGrey,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const LoginPage();
                          }));
                        },
                        child: Text(
                          'Sign in',
                          style: MyStyles.normalText.copyWith(
                            fontWeight: FontWeight.w700,
                            color: MyColors.primaryBlue,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
