import 'package:flutter/material.dart';
import 'package:rest_api_demo/fruit.dart';

class FruitItem extends StatelessWidget {
  final Fruit item;

  FruitItem({this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2),
      height: 140,
      child: Card(
        elevation: 5,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.network(this.item.imageUrl, width: 200),
            Expanded(
                child: Container(
              padding: EdgeInsets.all(5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(this.item.title,
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Text("id:${this.item.id}"),
                  Text("genus:${this.item.quantity}"),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
