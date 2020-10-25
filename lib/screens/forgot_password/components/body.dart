import 'package:flutter/material.dart';
import 'package:shop_app/components/no_account_text.dart';

import '../../../constants.dart';
import '../../../size_config.dart';
import 'forgot_pass_form.dart';

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
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight * 0.04),
                Text(
                  "Forgot Password",
                  style: headingStyle,
                ),
                const Text(
                  """
Please enter your email and we will send \n you a link to return to your account""",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.1),
                const ForgotPassForm(),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.1,
                ),
                const NoAccountText()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
