import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app/screens/home/home_screen.dart';

import '../constants.dart';
import '../enums.dart';
import '../screens/profile/profile_screen.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    @required this.selectedMenu,
    Key key,
  }) : super(key: key);

  final MenuState selectedMenu;

  @override
  Widget build(BuildContext context) {
    const inActiveIconColor = Color(0xFFB6B6B6);

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, -15),
            blurRadius: 20,
            color: const Color(0xFFDADADA).withOpacity(0.15),
          )
        ],
      ),
      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: SvgPicture.asset(
                "assets/icons/Shop Icon.svg",
                color: MenuState.home == selectedMenu
                    ? kPrimaryColor
                    : inActiveIconColor,
              ),
              onPressed: () {
                if (selectedMenu != MenuState.home) {
                  // Navigator.pushReplacementNamed(
                  //   context,
                  //   HomeScreen.routeName,
                  // );
                  Navigator.pushReplacement(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation1, animation2) =>
                          const HomeScreen(),
                      transitionDuration: const Duration(seconds: 0),
                    ),
                  );
                }
              },
            ),
            IconButton(
              icon: SvgPicture.asset(
                "assets/icons/Heart Icon.svg",
                color: MenuState.favourite == selectedMenu
                    ? kPrimaryColor
                    : inActiveIconColor,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: SvgPicture.asset(
                "assets/icons/Chat bubble Icon.svg",
                color: MenuState.message == selectedMenu
                    ? kPrimaryColor
                    : inActiveIconColor,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: SvgPicture.asset(
                "assets/icons/User Icon.svg",
                color: MenuState.profile == selectedMenu
                    ? kPrimaryColor
                    : inActiveIconColor,
              ),
              onPressed: () {
                if (selectedMenu != MenuState.profile) {
                  // Navigator.pushReplacementNamed(
                  //   context,
                  //   ProfileScreen.routeName,
                  // );
                  Navigator.pushReplacement(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation1, animation2) =>
                          const ProfileScreen(),
                      transitionDuration: const Duration(seconds: 0),
                    ),
                  );
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
