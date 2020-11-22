import 'package:flutter/material.dart';
import 'package:shop_app/models/Product.dart';

import 'components/body.dart';
import 'components/custom_app_bar.dart';

class DetailsScreen extends StatelessWidget {
  static String routeName = "/details";

  const DetailsScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ProductDetailsArguments args =
        ModalRoute.of(context).settings.arguments;
    return Scaffold(
      //By default background color is white
      backgroundColor: const Color(0xFFF5F6F9),
      appBar: CustomAppBar(rating: args.product.rating),
      body: Body(
        product: args.product,
      ),
    );
  }
}

//But we also need to pass our product to our details screen
//And we use name route so we need to create a arguments class
class ProductDetailsArguments {
  final Product product;

  ProductDetailsArguments({@required this.product});
}
