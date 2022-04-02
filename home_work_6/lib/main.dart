import 'package:flutter/material.dart';
import 'package:home_work_6/create_product.dart';
import 'package:home_work_6/edit_product.dart';
import 'package:home_work_6/product_list.dart';

void main() {
  runApp(const MyApp());
}

class Routes {
  static const String productListPage = "/screen1";
  static const String editProductPage = "/screen2";
  static const String createProductPage = "/screen3";
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        Routes.productListPage: (context) => const ProductListPage(),
        Routes.editProductPage: (context) => const EditProductPage(),
        Routes.createProductPage: (context) => const CreateProductPage(),
      },
      initialRoute: Routes.productListPage,
    );
  }
}
