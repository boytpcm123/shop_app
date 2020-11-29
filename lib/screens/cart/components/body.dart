import 'package:flutter/material.dart';
import 'package:shop_app/models/Cart.dart';

import 'cart_item_card.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...List.generate(
          demoCarts.length,
          (index) => CartItemCard(cart: demoCarts[index]),
        )
      ],
    );
  }
}
