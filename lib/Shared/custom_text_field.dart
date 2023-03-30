import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final TextInputType TextInputTypeee;
  final bool ispasss;
  final String hinttexttt;
  MyTextField({
    Key? key,
    required this.TextInputTypeee,
    required this.hinttexttt,
    required this.ispasss,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextField(
        keyboardType: TextInputTypeee,
        obscureText: ispasss,
        decoration: InputDecoration(
          hintText: hinttexttt,
          // To delete borders
          enabledBorder: OutlineInputBorder(
            borderSide: Divider.createBorderSide(context),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey,
            ),
          ),
          // fillColor: Colors.red,
          filled: true,
          contentPadding: const EdgeInsets.all(8),
        ));
  }
}
