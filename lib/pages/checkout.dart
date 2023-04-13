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
      body: Column(
        children: [
          SingleChildScrollView(
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
                            radius: 25,
                            backgroundImage:
                                AssetImage(ttt.selected[index].imgpath)),
                        title: Text(
                          ttt.selected[index].name,
                          style: TextStyle(fontSize: 19),
                        ),
                        trailing: IconButton(
                          onPressed: () {
                            ttt.delete(ttt.selected[index]);
                          },
                          icon: Icon(Icons.remove),
                        ),
                      ),
                    );
                  }),
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text(
              "Pay ${ttt.price}",
              style: TextStyle(fontSize: 18, color: Colors.black),
            ),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                    Color.fromARGB(255, 119, 233, 120)),
                padding: MaterialStateProperty.all(EdgeInsets.all(12)),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)))),
          )
        ],
      ),
    );
  }
}
