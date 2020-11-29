import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class ColorDot extends StatelessWidget {
  const ColorDot({
    @required this.color,
    @required this.press,
    this.isSelected = false,
    Key key,
  }) : super(key: key);

  final Color color;
  final bool isSelected;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: const EdgeInsets.only(right: 2),
        padding: const EdgeInsets.all(8),
        width: getRatioScreenWidth(40),
        height: getRatioScreenWidth(40),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: isSelected ? kPrimaryColor : Colors.transparent,
          ),
        ),
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
          ),
        ),
      ),
    );
  }
}
