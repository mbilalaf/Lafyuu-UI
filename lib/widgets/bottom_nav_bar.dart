import 'package:flutter/material.dart';
import 'package:lafyuu_e_commerce/pages/account_page.dart';
import 'package:lafyuu_e_commerce/pages/cart_page.dart';
import 'package:lafyuu_e_commerce/pages/explore_page.dart';
import 'package:lafyuu_e_commerce/pages/home_page.dart';
import 'package:lafyuu_e_commerce/pages/offer_page.dart';
import 'package:lafyuu_e_commerce/utils/colors.dart';
import 'package:lafyuu_e_commerce/utils/styles.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    ExplorePage(),
    CartPage(),
    OfferPage(),
    AccountPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: MyColors.white,
        selectedFontSize: 10,
        selectedLabelStyle: MyStyles.mediumCaption.copyWith(
          color: MyColors.primaryBlue,
          fontWeight: FontWeight.w700,
        ),
        unselectedFontSize: 10,
        unselectedLabelStyle: MyStyles.mediumCaption.copyWith(
          color: MyColors.netralGrey,
        ),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Image(
              height: 24,
              color: _selectedIndex == 0
                  ? MyColors.primaryBlue
                  : MyColors.netralGrey,
              image: const AssetImage(
                'assets/icons/system icon/Home.png',
              ),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image(
              height: 24,
              color: _selectedIndex == 1
                  ? MyColors.primaryBlue
                  : MyColors.netralGrey,
              image: const AssetImage(
                'assets/icons/system icon/Search.png',
              ),
            ),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Image(
              height: 24,
              color: _selectedIndex == 2
                  ? MyColors.primaryBlue
                  : MyColors.netralGrey,
              image: const AssetImage(
                'assets/icons/system icon/Cart.png',
              ),
            ),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Image(
              height: 24,
              color: _selectedIndex == 3
                  ? MyColors.primaryBlue
                  : MyColors.netralGrey,
              image: const AssetImage(
                'assets/icons/system icon/Offer.png',
              ),
            ),
            label: 'Offer',
          ),
          BottomNavigationBarItem(
            icon: Image(
              height: 24,
              color: _selectedIndex == 4
                  ? MyColors.primaryBlue
                  : MyColors.netralGrey,
              image: const AssetImage(
                'assets/icons/system icon/User.png',
              ),
            ),
            label: 'Account',
          ),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        selectedItemColor: MyColors.primaryBlue,
        unselectedItemColor: MyColors.netralGrey,
        iconSize: 24,
        onTap: _onItemTapped,
        elevation: 5,
      ),
    );
  }
}
