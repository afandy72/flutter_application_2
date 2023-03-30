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
    return TextField();
  }
}
