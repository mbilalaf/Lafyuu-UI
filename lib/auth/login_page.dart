import 'package:flutter/material.dart';
import 'package:lafyuu_e_commerce/auth/register_page.dart';
import 'package:lafyuu_e_commerce/utils/colors.dart';
import 'package:lafyuu_e_commerce/utils/styles.dart';
import 'package:lafyuu_e_commerce/widgets/bottom_nav_bar.dart';
import 'package:lafyuu_e_commerce/widgets/custom_textfield.dart';
import 'package:lafyuu_e_commerce/widgets/my_button.dart';
import 'package:lafyuu_e_commerce/widgets/social_button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
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
                  'Welcome to Lafyuu',
                  style: MyStyles.heading4.copyWith(
                    color: MyColors.netralDark,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  'sign in to continue',
                  style: MyStyles.normalText.copyWith(
                    color: MyColors.netralGrey,
                  ),
                ),
                const SizedBox(height: 28),
                const CustomTextField(
                  text: 'Your Email',
                  prefixIcon: Icons.email_outlined,
                ),
                const SizedBox(height: 12),
                const CustomTextField(
                  text: 'Your Password',
                  prefixIcon: Icons.lock_outline,
                  sufixIcon: Icons.remove_red_eye_outlined,
                ),
                const SizedBox(height: 12),
                MyButton(
                  btnText: 'Sign in',
                  onPress: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const BottomNavBar();
                    }));
                  },
                ),
                const SizedBox(height: 20),
                IntrinsicHeight(
                  child: Row(
                    children: [
                      const Expanded(
                        child: Divider(
                          endIndent: 25,
                          thickness: 1,
                          color: MyColors.netralLight,
                        ),
                      ),
                      Text(
                        'OR',
                        style: MyStyles.mediumText.copyWith(
                          fontWeight: FontWeight.w700,
                          color: MyColors.netralGrey,
                        ),
                      ),
                      const Expanded(
                        child: Divider(
                          indent: 25,
                          thickness: 1,
                          color: MyColors.netralLight,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                const SocialBtn(
                  text: 'Login with Google',
                  image: AssetImage(
                    'assets/icons/Other Icon/Google.png',
                  ),
                ),
                const SizedBox(height: 8),
                const SocialBtn(
                  text: 'Login with Facebook',
                  image: AssetImage(
                    'assets/icons/Other Icon/Facebook.png',
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  'Forgot Password?',
                  style: MyStyles.normalText.copyWith(
                    fontWeight: FontWeight.w700,
                    color: MyColors.primaryBlue,
                  ),
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don\'t have an account? ',
                      style: MyStyles.normalText.copyWith(
                        fontWeight: FontWeight.w700,
                        color: MyColors.netralGrey,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const RegisterPage();
                        }));
                      },
                      child: Text(
                        'Register',
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
    );
  }
}
