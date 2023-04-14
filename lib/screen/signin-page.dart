import 'dart:ui';

import 'package:auth_project/configs.dart';
import 'package:auth_project/screen/forgotPassword-page.dart';
import 'package:auth_project/screen/register.dart';
import 'package:auth_project/widgets/primaryButton-widget.dart';
import 'package:auth_project/widgets/textfields-widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SignInPage extends StatelessWidget {
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
            SizedBox(
              height: size.height * 0.08,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: defaultPadding),
              child: Text(
                "Lets Sign you in",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
              ),
            ),
            const Text(
              "Welcome Back ,",
              style: TextStyle(fontSize: 25),
            ),
            const Text(
              "You have been missed",
              style: TextStyle(fontSize: 25),
            ),
            TextFieldWidget(
              hint: "Email,phone & username",
            ),
            TextFieldWidget(
              hint: "Password",
              edgeInsets: const EdgeInsets.symmetric(vertical: defaultPadding),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ForgotPasswordPage()));
                  },
                  style: TextButton.styleFrom(primary: Colors.black),
                  child: const Text("Forgot Password?")),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: defaultPadding),
              width: size.width * 0.9,
              child: PrimaryButtonWidget(
                name: "Sign in",
                onPressed: () {},
              ),
            ),
            Row(
              children: const [
                Expanded(child: Divider()),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: defaultPadding / 2),
                  child: Text(
                    "or",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                ),
                Expanded(child: Divider())
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Image.asset("assets/images/google.png")),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: defaultPadding / 2),
                  child: IconButton(
                      onPressed: () {},
                      icon: Image.asset("assets/images/facebook.png")),
                ),
                IconButton(
                    onPressed: () {},
                    icon: Image.asset("assets/images/apple.png")),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(defaultPadding * 3),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have on account ?"),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Register(),
                          ));
                    },
                    style: TextButton.styleFrom(primary: Colors.black),
                    child: const Text(
                      "Register Now",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
