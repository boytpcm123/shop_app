import 'package:flutter/material.dart';
import 'package:shop_app/enums.dart';
import 'package:shop_app/screens/profile/components/body.dart';

import '../../components/custom_bottom_nav_bar.dart';

class ProfileScreen extends StatelessWidget {
  static String routeName = "/profile";
  const ProfileScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
      ),
      body: const Body(),
      bottomNavigationBar: const CustomBottomNavBar(
        selectedMenu: MenuState.profile,
      ),
    );
  }
}
