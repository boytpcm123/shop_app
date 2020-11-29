import 'package:flutter/material.dart';
import 'package:shop_app/models/Product.dart';

class Cart {
  final Product product;
  final int numberOfItems;

  Cart({@required this.product, @required this.numberOfItems});
}

//Demo data for our cart
List<Cart> demoCarts = [
  Cart(product: demoProducts[0], numberOfItems: 2),
  Cart(product: demoProducts[1], numberOfItems: 1),
  Cart(product: demoProducts[2], numberOfItems: 3),
  Cart(product: demoProducts[3], numberOfItems: 4),
];
