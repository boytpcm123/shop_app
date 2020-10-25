import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/screens/otp/components/otp_form.dart';
import 'package:shop_app/size_config.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(20),
        ),
        child: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                Text("OTP Verification", style: headingStyle),
                const Text("We sent your code to +1 898 860 ***"),
                buildTimer(),
                const OtpForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row buildTimer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("This code will expired in "),
        TweenAnimationBuilder(
          tween: Tween(begin: 30.0, end: 0),
          duration: const Duration(seconds: 30), // Because we allow user 30s
          builder: (context, value, child) => Text(
            "00:${value.toInt()}",
            style: const TextStyle(
              color: kPrimaryColor,
            ),
          ),
          onEnd: () {},
        )
      ],
    );
  }
}
