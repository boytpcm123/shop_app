import 'package:flutter/material.dart';
import 'package:shop_app/components/social_card.dart';
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
          horizontal: getRatioScreenWidth(20),
        ),
        child: SizedBox(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight * 0.02),
                Text(
                  "Register Account",
                  style: headingStyle,
                ),
                const Text(
                  "Complete your details or continue\nwith social media",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.07),
                const SignUpForm(),
                SizedBox(height: SizeConfig.screenHeight * 0.07),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialCard(
                      icon: "assets/icons/google-icon.svg",
                      press: () => {},
                    ),
                    SocialCard(
                      icon: "assets/icons/facebook-2.svg",
                      press: () => {},
                    ),
                    SocialCard(
                      icon: "assets/icons/twitter.svg",
                      press: () => {},
                    ),
                  ],
                ),
                SizedBox(height: getRatioScreenHeight(20)), //8%
                const Text(
                  """By continuing your confirm that you agree \nwith our Term and Condition""",
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
