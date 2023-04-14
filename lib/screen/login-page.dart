import 'package:auth_project/configs.dart';
import 'package:auth_project/screen/register.dart';
import 'package:auth_project/screen/signin-page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginPage extends StatelessWidget {
  late Size size;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
        child: Column(
          children: [
            SizedBox(
              height: size.height * 0.15,
            ),
            SizedBox(
                width: size.width * 0.8,
                child: Image.asset("assets/images/background.png")),
            const Padding(
              padding: EdgeInsets.all(defaultPadding),
              child: Text(
                "Team works all",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(defaultPadding),
              child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
            ),
            Padding(
              padding: const EdgeInsets.all(defaultPadding * 1.5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: defaultPadding / 2),
                    width: 10,
                    height: 10,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.grey),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: defaultPadding / 2),
                    width: 10,
                    height: 10,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.grey),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: defaultPadding / 2),
                    width: 10,
                    height: 10,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.grey),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: defaultPadding / 2),
                    width: 20,
                    height: 20,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: primaryColor),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignInPage(),
                          ));
                    },
                    style: ElevatedButton.styleFrom(
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(defaultPadding / 2),
                                bottomLeft: Radius.circular(defaultPadding / 2),
                                topRight: Radius.circular(0),
                                bottomRight: Radius.circular(0))),
                        padding: const EdgeInsets.symmetric(
                            vertical: defaultPadding),
                        backgroundColor: Colors.black),
                    child: Text("Sign in"),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Register(),
                          ));
                    },
                    style: ElevatedButton.styleFrom(
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(defaultPadding / 2),
                                bottomRight:
                                    Radius.circular(defaultPadding / 2),
                                topLeft: Radius.circular(0),
                                bottomLeft: Radius.circular(0))),
                        padding: const EdgeInsets.symmetric(
                            vertical: defaultPadding),
                        backgroundColor: primaryColor),
                    child: const Text("Register"),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
