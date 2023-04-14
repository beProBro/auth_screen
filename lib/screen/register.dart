import 'package:auth_project/configs.dart';
import 'package:auth_project/screen/signin-page.dart';
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
            _buildTextField("Name"),
            _buildTextField("Bussiness name"),
            _buildTextField("Phone"),
            _buildTextField("Email"),
            _buildTextField("Password"),
            Container(
              margin: const EdgeInsets.symmetric(vertical: defaultPadding),
              width: size.width * 0.9,
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      padding:
                          const EdgeInsets.symmetric(vertical: defaultPadding)),
                  child: const Text("Register")),
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

  Widget _buildTextField(String hint) {
    return Padding(
      padding: const EdgeInsets.only(top: defaultPadding * 2),
      child: TextFormField(
        decoration:
            InputDecoration(hintText: hint, border: const OutlineInputBorder()),
      ),
    );
  }
}
