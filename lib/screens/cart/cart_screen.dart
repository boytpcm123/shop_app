import 'package:flutter/material.dart';
import 'package:shop_app/models/Cart.dart';

import 'components/body.dart';

class CartScreen extends StatelessWidget {
  static String routeName = "/cart";
  const CartScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: const Body(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: Column(
        children: [
          const Text(
            "Your Cart",
            style: TextStyle(color: Colors.black),
          ),
          Text(
            "${demoCarts.length} items",
            style: Theme.of(context).textTheme.caption,
          )
        ],
      ),
    );
  }
}
