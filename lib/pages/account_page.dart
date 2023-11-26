import 'package:flutter/material.dart';
import 'package:lafyuu_e_commerce/pages/address_page.dart';
import 'package:lafyuu_e_commerce/pages/orderpage.dart';
import 'package:lafyuu_e_commerce/pages/payment_page.dart';
import 'package:lafyuu_e_commerce/pages/profile_page.dart';
import 'package:lafyuu_e_commerce/utils/colors.dart';
import 'package:lafyuu_e_commerce/utils/styles.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
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
        automaticallyImplyLeading: false,
        title: Text(
          'Account',
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
                  builder: (context) => const ProfilePage(),
                ),
              );
            },
            child: ListTile(
              leading: const Image(
                height: 24,
                color: MyColors.primaryBlue,
                image: AssetImage(
                  'assets/icons/system icon/User.png',
                ),
              ),
              tileColor: selectedIndex == 0
                  ? MyColors.primaryBlue.withOpacity(0.2)
                  : MyColors.white,
              splashColor: selectedIndex == 0
                  ? MyColors.primaryBlue.withOpacity(0.2)
                  : MyColors.white,
              title: Text(
                'Profile',
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
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const OrderPage(),
                ),
              );
            },
            child: ListTile(
              leading: const Image(
                height: 24,
                color: MyColors.primaryBlue,
                image: AssetImage(
                  'assets/icons/system icon/bag.png',
                ),
              ),
              tileColor: selectedIndex == 1
                  ? MyColors.primaryBlue.withOpacity(0.2)
                  : MyColors.white,
              splashColor: selectedIndex == 1
                  ? MyColors.primaryBlue.withOpacity(0.2)
                  : MyColors.white,
              title: Text(
                'Order',
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
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AddressPage(),
                ),
              );
            },
            child: ListTile(
              leading: const Image(
                height: 24,
                color: MyColors.primaryBlue,
                image: AssetImage(
                  'assets/icons/system icon/Location.png',
                ),
              ),
              tileColor: selectedIndex == 2
                  ? MyColors.primaryBlue.withOpacity(0.2)
                  : MyColors.white,
              splashColor: selectedIndex == 2
                  ? MyColors.primaryBlue.withOpacity(0.2)
                  : MyColors.white,
              title: Text(
                'Address',
                style: MyStyles.normalText.copyWith(
                  color: MyColors.netralDark,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              onTap(3);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const PaymentPage(),
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
              tileColor: selectedIndex == 3
                  ? MyColors.primaryBlue.withOpacity(0.2)
                  : MyColors.white,
              splashColor: selectedIndex == 3
                  ? MyColors.primaryBlue.withOpacity(0.2)
                  : MyColors.white,
              title: Text(
                'Payment',
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
