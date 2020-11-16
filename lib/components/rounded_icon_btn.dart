import 'package:flutter/material.dart';
import 'package:shop_app/models/Product.dart';

import '../size_config.dart';

class RoundedIconBtn extends StatelessWidget {
  const RoundedIconBtn({
    @required this.iconData,
    @required this.press,
    Key key,
  }) : super(key: key);

  final IconData iconData;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProportionateScreenWidth(40),
      width: getProportionateScreenWidth(40),
      child: FlatButton(
        padding: const EdgeInsets.only(left: 10),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        color: Colors.white,
        onPressed: press,
        child: Icon(iconData),
      ),
    );
  }
}

class ProductDetailsArguments {
  final Product product;

  ProductDetailsArguments({@required this.product});
}
