import 'package:flutter/material.dart';

class InputNumber extends StatelessWidget {
  InputNumber({Key? key, required this.text}) : super(key: key);

  final controller = TextEditingController();
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      width: MediaQuery.of(context).size.width * 0.35,
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
            border: const UnderlineInputBorder(), labelText: text),
      ),
    );
  }
}
