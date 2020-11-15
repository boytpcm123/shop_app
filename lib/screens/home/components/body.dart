import 'package:flutter/material.dart';
import 'package:shop_app/size_config.dart';

import 'categories.dart';
import 'discount_banner.dart';
import 'home_header.dart';
import 'popular_products.dart';
import 'special_offers.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenHeight(20)),
            const HomeHeader(),
            SizedBox(height: getProportionateScreenHeight(30)),
            const DiscountBanner(),
            SizedBox(height: getProportionateScreenHeight(30)),
            const Categories(),
            SizedBox(height: getProportionateScreenHeight(30)),
            const SpecialOffers(),
            SizedBox(height: getProportionateScreenHeight(30)),
            const PopularProducts()
          ],
        ),
      ),
    );
  }
}
