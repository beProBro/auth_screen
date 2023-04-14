import 'package:auth_project/configs.dart';
import 'package:auth_project/screen/otpVerification-page.dart';
import 'package:auth_project/widgets/primaryButton-widget.dart';
import 'package:auth_project/widgets/textfields-widget.dart';
import 'package:flutter/material.dart';

class ForgotPasswordPage extends StatelessWidget {
  late Size size;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: size.height * 0.08),
            SizedBox(
                width: size.width * 0.9,
                child: Image.asset(
                    "assets/images/forgot_password_background.png")),
            const Text(
              "Forgot \nPassword?",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: defaultPadding),
              child: Text(
                "Don't worry ! It's happens. Please enter the phone number we will send the OTP in this phone number.",
              ),
            ),
            TextFieldWidget(
              hint: "Enter the phone Number",
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: defaultPadding * 2),
              width: size.width * 0.9,
              child: PrimaryButtonWidget(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => OtpVerificationPage()));
                  },
                  name: "Continue"),
            )
          ],
        ),
      ),
    );
  }
}
