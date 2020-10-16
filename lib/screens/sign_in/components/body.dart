import 'package:flutter/material.dart';
import 'package:shop_app/size_config.dart';
import 'sign_form.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              Text(
                "Welcome Back",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: getProportionateScreenWidth(28),
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                """
Sign in with your email and password\nor continue with social media""",
                textAlign: TextAlign.center,
              ),
              const SignForm(),
            ],
          ),
        ),
      ),
    );
  }
}
