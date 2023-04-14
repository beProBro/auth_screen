import 'package:auth_project/configs.dart';
import 'package:auth_project/screen/signin-page.dart';
import 'package:auth_project/widgets/primaryButton-widget.dart';
import 'package:auth_project/widgets/textfields-widget.dart';
import 'package:flutter/material.dart';

class Register extends StatelessWidget {
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
              height: size.height * 0.04,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: defaultPadding),
              child: Text(
                "Lets Register \nAccount",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
              ),
            ),
            const Text(
              "Hello user , you have \na greatful journey",
              style: TextStyle(fontSize: 25),
            ),
            TextFieldWidget(hint: "Name"),
            TextFieldWidget(hint: "Bussiness name"),
            TextFieldWidget(hint: "Phone"),
            TextFieldWidget(hint: "Email"),
            TextFieldWidget(hint: "Password"),
            Container(
              margin: const EdgeInsets.symmetric(vertical: defaultPadding),
              width: size.width * 0.9,
              child: PrimaryButtonWidget(
                name: "Register",
                onPressed: () {},
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Already have an account ?"),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignInPage(),
                        ));
                  },
                  style: TextButton.styleFrom(primary: Colors.black),
                  child: const Text(
                    "Login",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
