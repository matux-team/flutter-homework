import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InputNumber extends StatelessWidget {
  const InputNumber({Key? key, required this.text, required this.controller})
      : super(key: key);

  final TextEditingController? controller;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      width: MediaQuery.of(context).size.width * 0.35,
      child: TextField(
        controller: controller,
        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
        decoration: InputDecoration(
            border: const UnderlineInputBorder(), labelText: text),
      ),
    );
  }
}
