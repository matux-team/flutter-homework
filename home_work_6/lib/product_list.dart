import 'package:flutter/material.dart';
import 'package:home_work_6/product_tag.dart';

import 'product_model.dart';

List<Product> listProduct = [
  Product('Shoes', '250', 'hello', ''),
  Product('Abc', '50', 'h1sdo', '')
];

class ProductListPage extends StatefulWidget {
  const ProductListPage({Key? key}) : super(key: key);

  @override
  State<ProductListPage> createState() => _ProductListPageState();
}

class _ProductListPageState extends State<ProductListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Products List'),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
        ],
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(10),
        itemCount: listProduct.length,
        itemBuilder: (BuildContext context, int index) {
          return ProductTag(listProduct[index]);
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(
          height: 10,
          thickness: 1.2,
        ),
      ),
    );
  }
}
