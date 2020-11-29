import 'package:flutter/material.dart';
import 'package:shop_app/components/rounded_icon_btn.dart';
import 'package:shop_app/models/Product.dart';

import '../../../size_config.dart';
import 'color_dot.dart';

class ColorDots extends StatefulWidget {
  const ColorDots({
    @required this.product,
    Key key,
  }) : super(key: key);

  final Product product;

  @override
  _ColorDotsState createState() => _ColorDotsState();
}

class _ColorDotsState extends State<ColorDots> {
  int selectedColor = 0;
  int numberProduct = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getRatioScreenWidth(20),
      ),
      child: Row(
        children: [
          ...List.generate(
            widget.product.colors.length,
            (index) => ColorDot(
              color: widget.product.colors[index],
              isSelected: selectedColor == index,
              press: () {
                setState(() {
                  selectedColor = index;
                });
              },
            ),
          ),
          const Spacer(),
          RoundedIconBtn(
            iconData: Icons.remove,
            press: () {
              if (numberProduct > 0) {
                setState(() {
                  numberProduct--;
                });
              }
            },
          ),
          SizedBox(
            width: getRatioScreenWidth(15),
          ),
          Text(
            "$numberProduct",
            style: const TextStyle(
              fontSize: 20,
            ),
          ),
          SizedBox(
            width: getRatioScreenWidth(15),
          ),
          RoundedIconBtn(
            iconData: Icons.add,
            press: () {
              setState(() {
                numberProduct++;
              });
            },
          )
        ],
      ),
    );
  }
}
