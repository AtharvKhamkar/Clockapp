import 'package:flutter/material.dart';
import '../models/product.dart';
import '../widgets/product_item.dart';

class ProductOverviewscreen extends StatelessWidget {
  final List<Product> loadedProducts = [
    Product(
      id: 'P1',
      title: 'Red Shirt',
      description: 'A red shirt',
      price: 29.9,
      imageUrl:
          'https://cdn.pixabay.com/photo/2013/07/13/14/08/apparel-162192__340.png',
    ),
    Product(
      id: 'P2',
      title: 'Trousers',
      description: 'A nice pair of trousers',
      price: 59.99,
      imageUrl:
          'https://media.istockphoto.com/id/1446714569/vector/jeans.jpg?s=612x612&w=is&k=20&c=jsJP6dox0AOukNtYaOpyQjTf3YssKwe-Z_06n1UZmys=',
    ),
    Product(
      id: 'P3',
      title: 'Yellow Scarf',
      description: 'Warm and cozy - exactly what you need for the winter.',
      price: 19.99,
      imageUrl:
          'https://cdn.pixabay.com/photo/2017/08/06/14/42/blanket-2593141_960_720.jpg',
    ),
    Product(
      id: 'P4',
      title: 'A Pan',
      description: 'Prepare any meal you want',
      price: 49.99,
      imageUrl:
          'https://cdn.pixabay.com/photo/2014/12/02/14/50/pan-554072__340.jpg',
    ),
  ];
  ProductOverviewscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MyShop'),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10),
        itemBuilder: (ctx, i) => ProductItem(
          loadedProducts[i].id,
          loadedProducts[i].title,
          loadedProducts[i].imageUrl,
        ),
        itemCount: loadedProducts.length,
      ),
    );
  }
}
