import 'package:flutter/material.dart';
import 'package:home_work_6/product_list.dart';
import 'package:home_work_6/product_model.dart';

class ProductTag extends StatelessWidget {
  // const ProductTag({Key? key}) : super(key: key);
  ProductTag(this._product);

  Product _product;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.2,
            // color: Colors.red,
            child: CircleAvatar(
              backgroundColor: Colors.white,
              // backgroundImage: NetworkImage(_product.imageUrl),
              backgroundImage: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQCK6cmZmgr9ai_lkG8vtp3882436U44hPtEQ&usqp=CAU'),
              radius: 50,
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 25),
            child: Text(
              _product.name,
              style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
            ),
          ),
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
            onPressed: () {},
            icon: const Icon(
              Icons.favorite,
              color: Colors.green,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.delete,
              color: Colors.red,
            ),
          )
        ],
      ),
    );
  }
}
