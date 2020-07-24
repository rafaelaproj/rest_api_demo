import 'package:flutter/material.dart';
import 'package:rest_api_demo/fruit.dart';
import 'package:rest_api_demo/fruit_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Future<List<Fruit>> products;

  MyApp({this.products});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(products: products),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  final Future<List<Fruit>> products;

  MyHomePage({Key key, this.title, this.products}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rest API Demo"),
        backgroundColor: Colors.cyan,
        centerTitle: true,
      ),
      body: Center(
        child: FutureBuilder<List<Fruit>>(
          future: products,
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              print(snapshot.error);
            }
            return snapshot.hasData
                ? FruitList(items: snapshot.data)
                : Center(child: CircularProgressIndicator());
          },
        ),
      ),
    );
  }
}
