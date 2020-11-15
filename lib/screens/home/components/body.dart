import 'package:flutter/material.dart';
import 'package:shop_app/models/Product.dart';
import 'package:shop_app/screens/home/components/section_title.dart';
import 'package:shop_app/size_config.dart';

import 'categories.dart';
import 'discount_banner.dart';
import 'home_header.dart';
import 'product_card.dart';
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
            SectionTitle(text: "Popular Product", press: () {}),
            SizedBox(height: getProportionateScreenHeight(30)),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ...List.generate(
                    demoProducts.length,
                    (index) => ProductCard(
                      product: demoProducts[index],
                    ),
                  ),
                  SizedBox(
                    width: getProportionateScreenWidth(20),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
