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
            minWidth: 60,
            onPressed: () {},
            child: const Icon(
              Icons.more_vert,
              color: Colors.white,
            ),
          ),
          MaterialButton(
            minWidth: 60,
            onPressed: () {},
            child: const Icon(
              Icons.local_grocery_store_rounded,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: <Widget>[
          Container(
            // decoration: BoxDecoration(
            //   // border: Border.all(color: Colors.blueAccent),
            // ),
            padding: const EdgeInsets.all(8),
            child: const Text("He'd have you all unravel at the"),
            color: Colors.teal[100],
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Heed not the rabble'),
            color: Colors.teal[200],
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Sound of screams but the'),
            color: Colors.teal[300],
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Who scream'),
            color: Colors.teal[400],
          ),
        ],
      ),
    );
  }
}
