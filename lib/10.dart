import 'package:flutter/material.dart';

class Product {
  String title;
  String description;

  Product(this.title, this.description);
}

void main() {
  runApp(MaterialApp(
    title: "导航数据传递与接收",
    home: ProductList(
        products: List.generate(20, (i) => Product("商品 $i", "这是商品$i的详情"))
    ),
  ));
}

class ProductList extends StatelessWidget {
  List<Product> products;


  ProductList({Key key, @required this.products}) :super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("商品列表"),),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(products[index].title),
            onTap: () {},
          );
        },
      ),
    );
  }
}