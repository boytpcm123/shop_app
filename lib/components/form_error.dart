import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../size_config.dart';

class FormError extends StatelessWidget {
  const FormError({
    @required this.errors,
    Key key,
  }) : super(key: key);

  final List<String> errors;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
          errors.length, (index) => formErrorText(error: errors[index])),
    );
  }

  Row formErrorText({String error}) {
    return Row(
      children: [
        SvgPicture.asset(
          "assets/icons/Error.svg",
          width: getRatioScreenWidth(14),
          height: getRatioScreenWidth(14),
        ),
        SizedBox(
          width: getRatioScreenWidth(10),
        ),
        Text(error),
      ],
    );
  }
}
