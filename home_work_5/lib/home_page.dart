import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final List<String> image = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcToSelgFd49BQZNRiQxG7hzaIMUWBrGuGwbIQ&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTMPG900ILx1vcv_v2y5JV8H6X1w7wX34YYiA&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQpxrnRc8JvqCh4996hzkmHxX4R0wPPPxgOig&usqp=CAU'
  ];

  final List<int> price = [
    2000,
    3000,
    4000,
  ];

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
      body: MediaQuery.removePadding(
        context: context,
        child: GridView.builder(
          padding:
              const EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 10),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 15, // khoang cach giua cac cot
            mainAxisSpacing: 12, // khoang cach giua moi hang
            mainAxisExtent: 200, // do cao moi cot
            crossAxisCount: 2, // 2 cot
          ),
          itemCount: 3,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              padding: const EdgeInsets.all(1),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15), // Image border
                child: SizedBox(
                  child: Image.network(
                    image[index],
                    alignment: Alignment.topCenter,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
