import 'package:flutter/material.dart';
import 'package:lafyuu_e_commerce/pages/credit_and_debit_card_page.dart';
import 'package:lafyuu_e_commerce/utils/colors.dart';
import 'package:lafyuu_e_commerce/utils/styles.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentMethodPageState();
}

class _PaymentMethodPageState extends State<PaymentPage> {
  int selectedIndex = 0;

  void onTap(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.white,
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: MyColors.netralGrey,
        ),
        title: Text(
          'Payment',
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
              onTap(0);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CreditAndDebitCardPage(),
                ),
              );
            },
            child: ListTile(
              leading: const Image(
                height: 24,
                color: MyColors.primaryBlue,
                image: AssetImage(
                  'assets/icons/system icon/Credit Card.png',
                ),
              ),
              tileColor: selectedIndex == 0
                  ? MyColors.primaryBlue.withOpacity(0.2)
                  : MyColors.white,
              splashColor: selectedIndex == 0
                  ? MyColors.primaryBlue.withOpacity(0.2)
                  : MyColors.white,
              title: Text(
                'Credit Card or Debit Card',
                style: MyStyles.normalText.copyWith(
                  color: MyColors.netralDark,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              onTap(1);
            },
            child: ListTile(
              leading: const Image(
                height: 24,
                image: AssetImage(
                  'assets/icons/Other Icon/Paypal.png',
                ),
              ),
              tileColor: selectedIndex == 1
                  ? MyColors.primaryBlue.withOpacity(0.2)
                  : MyColors.white,
              splashColor: selectedIndex == 1
                  ? MyColors.primaryBlue.withOpacity(0.2)
                  : MyColors.white,
              title: Text(
                'Paypal',
                style: MyStyles.normalText.copyWith(
                  color: MyColors.netralDark,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              onTap(2);
            },
            child: ListTile(
              leading: const Image(
                height: 24,
                color: MyColors.primaryBlue,
                image: AssetImage(
                  'assets/icons/system icon/Bank.png',
                ),
              ),
              tileColor: selectedIndex == 2
                  ? MyColors.primaryBlue.withOpacity(0.2)
                  : MyColors.white,
              splashColor: selectedIndex == 2
                  ? MyColors.primaryBlue.withOpacity(0.2)
                  : MyColors.white,
              title: Text(
                'Bank Transfer',
                style: MyStyles.normalText.copyWith(
                  color: MyColors.netralDark,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
