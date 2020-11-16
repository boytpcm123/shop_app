import 'package:flutter/material.dart';
import 'package:shop_app/components/rounded_icon_btn.dart';

import 'components/body.dart';

class DetailsScreen extends StatelessWidget {
  static String routeName = "/details";

  const DetailsScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F6F9),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: EdgeInsets.only(left: 20),
          child: RoundedIconBtn(
            iconData: Icons.arrow_back_ios,
            press: () => Navigator.pop(context),
          ),
        ),
      ),
      body: const Body(),
    );
  }
}
