import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: MaterialButton(
            onPressed: () {},
            child: const Icon(
              Icons.menu,
              color: Colors.white,
            )),
        title: const Text('My Shop'),
        actions: <Widget>[
          MaterialButton(
            minWidth: 50,
            onPressed: () {},
            child: const Icon(
              Icons.more_vert,
              color: Colors.white,
            ),
          ),
          MaterialButton(
            minWidth: 50,
            onPressed: () {},
            child: const Icon(
              Icons.local_grocery_store_rounded,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
