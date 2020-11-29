import 'package:flutter/material.dart';
import 'package:shop_app/models/Product.dart';

import 'product_description.dart';
import 'product_images.dart';
import 'top_rounded_container.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({@required this.product, Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProductImages(product: product),
        TopRoundedContainer(
          color: Colors.white,
          child: ProductionDescription(
            product: product,
            pressOnSeeMore: () {},
          ),
        ),
      ],
    );
  }
}
