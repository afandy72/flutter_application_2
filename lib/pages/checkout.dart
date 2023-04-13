import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:provider/provider.dart';

import '../Shared/appbar.dart';
import '../provider/cart.dart';

class checkout extends StatelessWidget {
  const checkout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: [Productandprice()],
        title: Text("Check Out"),
      ),
      body: SizedBox(
        height: 300,
      ),
    );
  }
}
