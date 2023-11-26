import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lafyuu_e_commerce/auth/login_page.dart';
import 'package:lafyuu_e_commerce/utils/colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const LoginPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: MyColors.primaryBlue,
      body: Center(
        child: Image(
          image: AssetImage(
            'assets/images/logo.png',
          ),
          height: 72,
          width: 72,
        ),
      ),
    );
  }
}
