import 'package:flutter/material.dart';
import 'package:home_work_4_1/input_number.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculator'),
      ),
      body: Center(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.3,
              ),
              Image.asset(
                'assets/images/calculator.jpeg',
                width: 150,
              ),
              InputNumber(key: const Key('inputA'), text: 'Nhập số A'),
              InputNumber(key: const Key('inputB'), text: 'Nhập số B'),
              Container(padding: EdgeInsets.all(20), child: Text('Ket Qua')),
              Container(
                child: Row(
                  children: [],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
