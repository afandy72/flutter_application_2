// ignore_for_file: prefer_const_constructors, unnecessary_const

import 'package:flutter/material.dart';
import 'package:flutter_application_2/pages/details.dart';
import 'package:flutter_application_2/pages/home.dart';
import 'package:flutter_application_2/pages/login.dart';
import 'package:flutter_application_2/pages/register.dart';
import 'package:flutter_application_2/provider/cart.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) {
        return cart();
      },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        home: Home(),
      ),
    );
  }
}
