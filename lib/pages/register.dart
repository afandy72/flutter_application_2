// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../Shared/custom_text_field.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(31.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account??",
                        style: TextStyle(fontSize: 17)),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          "Sign Up",
                          style: TextStyle(
                              color: Color.fromARGB(255, 162, 57, 57),
                              fontSize: 17),
                        ))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}