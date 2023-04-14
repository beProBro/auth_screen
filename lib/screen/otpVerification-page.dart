import 'package:auth_project/configs.dart';
import 'package:auth_project/widgets/primaryButton-widget.dart';
import 'package:auth_project/widgets/primaryTextButton-widget.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class OtpVerificationPage extends StatelessWidget {
  late Size size;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
              width: size.width * 0.9,
              child: Image.asset("assets/images/otp_background.png")),
          const Text(
            "OTP VERIFICATION",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: defaultPadding),
            child: Text("Enter the OTP sent to +98 914254564564"),
          ),
          const Pinput(),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: defaultPadding),
            child: Text("01:35"),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Don't receive code?"),
              PrimaryTextButtonWidget(onPressed: () {}, name: "Re-send"),
            ],
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical:defaultPadding*1.5),
            width: size.width * 0.9,
            child: PrimaryButtonWidget(
              name: "Submit",
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }
}
