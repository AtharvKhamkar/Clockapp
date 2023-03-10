import 'package:flutter/material.dart';
import './screens/products_overview_screen.dart';
import 'package:myshopapp/screens/product_detail_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyShop',
      theme: ThemeData(
          primarySwatch: Colors.purple, accentColor: Colors.deepOrange),
      home: ProductOverviewscreen(),
      routes: {
        ProductDetailScreen.routeName: (context) => ProductDetailScreen()
      },
    );
  }
}
