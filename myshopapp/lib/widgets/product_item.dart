import 'package:flutter/material.dart';
import 'package:myshopapp/screens/product_detail_screen.dart';

class ProductItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;

  ProductItem(this.id, this.title, this.imageUrl, {super.key});

  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context)!.settings.arguments as String;
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
          footer: GridTileBar(
            backgroundColor: Colors.black54,
            leading: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.favorite),
              color: Theme.of(context).colorScheme.secondary,
            ),
            title: Text(
              title,
              textAlign: TextAlign.center,
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.shopping_cart),
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
          child: GestureDetector(
            onTap: () {
              Navigator.of(context)
                  .pushNamed(ProductDetailScreen.routeName, arguments: id);
            },
            child: Image.network(
              imageUrl,
              fit: BoxFit.cover,
            ),
          )),
    );
  }
}
