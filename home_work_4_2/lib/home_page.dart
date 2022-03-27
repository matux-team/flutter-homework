import 'package:flutter/material.dart';
import 'package:home_work_4_2/poster_1.dart';
import 'package:home_work_4_2/poster_2.dart';
import 'package:home_work_4_2/poster_3.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: MaterialButton(
          onPressed: () {},
          child: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        title: const Text(
          'Flex Demo - CodeFresher',
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
      ),
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: const <Widget>[
          Expanded(
            child: Poster1(),
          ),
          Divider(
            height: 10,
            thickness: 3,
            indent: 20,
            endIndent: 20,
            color: Colors.black12,
          ),
          Expanded(
            child: Poster2(),
          ),
          Divider(
            height: 10,
            thickness: 3,
            indent: 20,
            endIndent: 20,
            color: Colors.black12,
          ),
          Expanded(
            child: Poster3(),
          )
        ],
      )),
    );
  }
}
