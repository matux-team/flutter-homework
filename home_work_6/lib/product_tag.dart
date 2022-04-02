import 'package:flutter/material.dart';
import 'package:home_work_6/product_model.dart';

class ProductTag extends StatefulWidget {
  const ProductTag(this._product, {Key? key}) : super(key: key);

  final Product _product;

  @override
  State<ProductTag> createState() => _ProductTagState();
}

class _ProductTagState extends State<ProductTag> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.all(5),
          width: MediaQuery.of(context).size.width * 0.2,
          // color: Colors.red,
          child: CircleAvatar(
            backgroundColor: Colors.white,
            backgroundImage: NetworkImage(widget._product.imageUrl),
            // backgroundImage: NetworkImage(
            //     'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQCK6cmZmgr9ai_lkG8vtp3882436U44hPtEQ&usqp=CAU'),
            radius: 50,
          ),
        ),
        Container(
          padding: const EdgeInsets.only(left: 25),
          child: Text(
            widget._product.name,
            style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
          ),
        ),
      ],
    );
  }
}
