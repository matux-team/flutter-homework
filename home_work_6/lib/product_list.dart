import 'package:flutter/material.dart';
import 'package:home_work_6/create_product.dart';
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
          MaterialButton(
            onPressed: () async {
              clearText();
              var receiveProduct = await Navigator.pushNamed(
                context,
                '/screen3',
              );
              setState(
                () {
                  if ((receiveProduct as Product).name != '') {
                    listProduct.add(receiveProduct);
                  }
                },
              );
            },
            child: const Icon(
              Icons.add,
              color: Colors.white,
              size: 28,
            ),
          ),
        ],
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(10),
        itemCount: listProduct.length,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            child: Row(
              children: [
                ProductTag(listProduct[index]),
                Expanded(
                  child: Container(
                    color: Colors.red,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.edit,
                    color: Colors.purple,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      listProduct[index].favorite =
                          !listProduct[index].favorite;
                    });
                  },
                  icon: Icon(
                    listProduct[index].favorite
                        ? Icons.favorite
                        : Icons.favorite_border,
                    color: Colors.green,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      listProduct.remove(listProduct[index]);
                    });
                  },
                  icon: const Icon(
                    Icons.delete,
                    color: Colors.red,
                  ),
                )
              ],
            ),
            onTap: () {},
          );
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(
          height: 10,
          thickness: 1.2,
        ),
      ),
    );
  }
}
