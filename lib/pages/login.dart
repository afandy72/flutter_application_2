// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../Shared/custom_text_field.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(31.0),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            const SizedBox(
              height: 64,
            ),
            MyTextField(
              ispasss: false,
              hinttexttt: "Enter Your E-mail: ",
              TextInputTypeee: TextInputType.emailAddress,
            ),
            const SizedBox(height: 32),
            MyTextField(
              ispasss: true,
              hinttexttt: "Enter Your Password: ",
              TextInputTypeee: TextInputType.number,
            ),
            const SizedBox(
              height: 64,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text("Sign In", style: TextStyle(fontSize: 19)),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue),
                  padding: MaterialStateProperty.all(EdgeInsets.all(12)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6)))),
            ),
            const SizedBox(
              height: 64,
            ),
          ]),
        ),
      ),
    );
  }
}
