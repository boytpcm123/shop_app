import 'package:flutter/material.dart';
import 'package:shop_app/models/Product.dart';

import 'product_images.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({@required this.product, Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProductImages(product: product);
  }
}
