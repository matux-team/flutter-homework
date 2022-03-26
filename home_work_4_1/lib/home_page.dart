import 'package:flutter/material.dart';
import 'package:home_work_4_1/input_number.dart';
import 'package:home_work_4_1/declaration.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
              InputNumber(text: 'Nhập số A', controller: controllerA),
              InputNumber(text: 'Nhập số B', controller: controllerB),
              Container(
                  padding: const EdgeInsets.all(20.0),
                  child: Text('Ket Qua : $ketqua')),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        ketqua = cong(double.parse(controllerA.text),
                            double.parse(controllerB.text));
                      });
                    },
                    child: const Text(
                      '+',
                      style: TextStyle(fontSize: 20),
                    ),
                    style: ButtonStyle(
                        fixedSize:
                            MaterialStateProperty.all(const Size(90, 40)),
                        backgroundColor:
                            MaterialStateProperty.all(Colors.blueAccent)),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        ketqua = tru(double.parse(controllerA.text),
                            double.parse(controllerB.text));
                      });
                    },
                    child: const Text(
                      '-',
                      style: TextStyle(fontSize: 20),
                    ),
                    style: ButtonStyle(
                        fixedSize:
                            MaterialStateProperty.all(const Size(90, 40)),
                        backgroundColor:
                            MaterialStateProperty.all(Colors.redAccent)),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        ketqua = nhan(double.parse(controllerA.text),
                            double.parse(controllerB.text));
                      });
                    },
                    child: const Text(
                      'x',
                      style: TextStyle(fontSize: 20),
                    ),
                    style: ButtonStyle(
                        fixedSize:
                            MaterialStateProperty.all(const Size(90, 40)),
                        backgroundColor:
                            MaterialStateProperty.all(Colors.green[600])),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        ketqua = chia(double.parse(controllerA.text),
                            double.parse(controllerB.text));
                      });
                    },
                    child: const Text(
                      ':',
                      style: TextStyle(fontSize: 20),
                    ),
                    style: ButtonStyle(
                        fixedSize:
                            MaterialStateProperty.all(const Size(90, 40)),
                        backgroundColor:
                            MaterialStateProperty.all(Colors.orangeAccent)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
