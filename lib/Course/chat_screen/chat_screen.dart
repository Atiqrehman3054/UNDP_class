import 'package:flutter/material.dart';
import 'package:ui_learing/Course/models/product.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat Screen'),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          var getData = products[index];
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(
                getData.image
              ),
            ),
            title: Text(getData.productName),
            subtitle: Text(getData.description),
            trailing: Text(getData.price.toString()),
          );
        },
      ),
    );
  }
}
List<ProductModel> products = [
  ProductModel(
    productName: 'Product 1',
    image: 'assets/deer.png',
    price: 29.99,
    description: 'This is the description for Product 1.',
  ),
  ProductModel(
    productName: 'Product 2',
    image: 'assets/deer.png',
    price: 19.99,
    description: 'This is the description for Product 2.',
  ),
  ProductModel(
    productName: 'Product 3',
    image: 'assets/deer.png',
    price: 39.99,
    description: 'This is the description for Product 3.',
  ),
  ProductModel(
    productName: 'Product 4',
    image: 'assets/deer.png',
    price: 49.99,
    description: 'This is the description for Product 4.',
  ),
  ProductModel(
    productName: 'Product 5',
    image: 'assets/deer.png',
    price: 24.99,
    description: 'This is the description for Product 5.',
  ),
  ProductModel(
    productName: 'Product 6',
    image: 'assets/deer.png',
    price: 34.99,
    description: 'This is the description for Product 6.',
  ),
  ProductModel(
    productName: 'Product 7',
    image: 'assets/deer.png',
    price: 44.99,
    description: 'This is the description for Product 7.',
  ),
  ProductModel(
    productName: 'Product 8',
    image: 'assets/deer.png',
    price: 54.99,
    description: 'This is the description for Product 8.',
  ),
  ProductModel(
    productName: 'Product 9',
    image: 'assets/deer.png',
    price: 64.99,
    description: 'This is the description for Product 9.',
  ),
  ProductModel(
    productName: 'Product 10',
    image: 'assets/deer.png',
    price: 74.99,
    description: 'This is the description for Product 10.',
  ),
  ProductModel(
    productName: 'Product 11',
    image: 'assets/deer.png',
    price: 84.99,
    description: 'This is the description for Product 11.',
  ),
  ProductModel(
    productName: 'Product 12',
    image: 'assets/deer.png',
    price: 94.99,
    description: 'This is the description for Product 12.',
  ),
];