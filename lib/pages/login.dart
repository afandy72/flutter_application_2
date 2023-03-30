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
          ]),
        ),
      ),
    );
  }
}
