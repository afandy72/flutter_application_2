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
    final ttt = Provider.of<cart>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: [Productandprice()],
        title: Text("Check Out"),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: 555,
          child: ListView.builder(
              padding: EdgeInsets.all(8),
              itemCount: ttt.selected.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  child: ListTile(
                    subtitle: Text(
                        "${ttt.selected[index].price} - ${ttt.selected[index].location}"),
                    leading: CircleAvatar(
                        backgroundImage:
                            AssetImage(ttt.selected[index].imgpath)),
                    title: Text(ttt.selected[index].name),
                    trailing: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.remove),
                    ),
                  ),
                );
              }),
        ),
      ),
    );
  }
}
