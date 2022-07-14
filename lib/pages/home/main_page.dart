import 'package:flutter/material.dart';
import 'package:shamo/theme.dart';

import 'chat_page.dart';
import 'home_page.dart';
import 'profile_page.dart';
import 'wishlist_page.dart';

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget cartButton() {
      return FloatingActionButton(
        onPressed: () {},
        backgroundColor: secondaryColor,
        child: Image.asset(
          'assets/icon_cart.png',
          width: 20,
        ),
      );
    }

    Widget customBottonNav() {
      return ClipRRect(
        borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
        child: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 15,
          clipBehavior: Clip.antiAlias,
          child: BottomNavigationBar(
              currentIndex: currentIndex,
              onTap: (value) {
                if (value != 2) {
                  setState(() {
                    currentIndex = value;
                  });
                }
              },
              backgroundColor: backgroundColor4,
              type: BottomNavigationBarType.fixed,
              items: [
                BottomNavigationBarItem(
                  icon: Container(
                    margin: EdgeInsets.only(top: 20, bottom: 10),
                    child: Image.asset(
                      'assets/icon_home.png',
                      width: 21,
                      color:
                          currentIndex == 0 ? primaryColor : Color(0xff808191),
                    ),
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Container(
                    margin: EdgeInsets.only(top: 20, bottom: 10),
                    child: Image.asset(
                      'assets/icon_chat.png',
                      width: 20,
                      color:
                          currentIndex == 1 ? primaryColor : Color(0xff808191),
                    ),
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/icon_chat.png',
                    width: 0,
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Container(
                    margin: EdgeInsets.only(top: 20, bottom: 10),
                    child: Image.asset(
                      'assets/icon_wishlist.png',
                      width: 20,
                      color:
                          currentIndex == 3 ? primaryColor : Color(0xff808191),
                    ),
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Container(
                    margin: EdgeInsets.only(top: 20, bottom: 10),
                    child: Image.asset(
                      'assets/icon_profile.png',
                      width: 18,
                      color:
                          currentIndex == 4 ? primaryColor : Color(0xff808191),
                    ),
                  ),
                  label: '',
                ),
              ]),
        ),
      );
    }

    Widget body() {
      switch (currentIndex) {
        case 0:
          return HomePage();
          break;
        case 1:
          return ChatPage();
          break;
        case 3:
          return WishlistPage();
          break;
        case 4:
          return ProfilePage();
          break;
        default:
          return null;
      }
    }

    return Scaffold(
        backgroundColor:
            currentIndex == 0 ? backgroundColor1 : backgroundColor3,
        floatingActionButton: cartButton(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: customBottonNav(),
        body: body());
  }
}
