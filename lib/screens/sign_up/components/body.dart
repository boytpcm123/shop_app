import 'package:flutter/material.dart';
import 'package:shop_app/size_config.dart';
import '../../../constants.dart';
import 'sign_up_form.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(20),
        ),
        child: SizedBox(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  "Register Account",
                  style: headingStyle,
                ),
                const Text(
                  "Complete your details or continue\nwith social media",
                  textAlign: TextAlign.center,
                ),
                const SignUpForm()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
