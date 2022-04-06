import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:home_work_6/product_model.dart';

var controllerName = TextEditingController();
var controllerPrice = TextEditingController();
var controllerDescription = TextEditingController();
var controllerimageURL = TextEditingController();

void clearText() {
  controllerName.text = '';
  controllerPrice.text = '';
  controllerDescription.text = '';
  controllerimageURL.text = '';
}

class CreateProductPage extends StatefulWidget {
  const CreateProductPage({Key? key}) : super(key: key);

  @override
  State<CreateProductPage> createState() => _CreateProductPageState();
}

class _CreateProductPageState extends State<CreateProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Product'),
        centerTitle: true,
        actions: [
          MaterialButton(
            onPressed: () {
              Product _product = Product(
                  controllerName.text,
                  controllerPrice.text,
                  controllerDescription.text,
                  controllerimageURL.text);
              Navigator.pop(context, _product);
            },
            child: const Icon(
              Icons.save,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                const Text(
                  'Expanded',
                  style: TextStyle(fontSize: 20),
                ),
                const SizedBox(
                  width: 15,
                ),
                Flexible(
                  child: Container(
                    alignment: Alignment.centerLeft,
                    decoration: const BoxDecoration(
                      color: Colors.cyan,
                      borderRadius: BorderRadius.all(
                          Radius.circular(10.0)), // Set rounded corner radius
                    ),
                    child: Container(
                      color: Colors.brown,
                      padding: const EdgeInsets.only(left: 2),
                      child: const Text(
                        '1',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ),
                Flexible(
                  flex: 2,
                  child: Container(
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.all(
                          Radius.circular(10.0)), // Set rounded corner radius
                    ),
                    child: Container(
                      color: Colors.brown,
                      padding: const EdgeInsets.only(left: 2),
                      child: const Text(
                        '1',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ),
                Flexible(
                  child: Container(
                    alignment: Alignment.centerRight,
                    decoration: const BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.all(
                          Radius.circular(10.0)), // Set rounded corner radius
                    ),
                    child: Container(
                      color: Colors.brown,
                      padding: const EdgeInsets.only(left: 2),
                      child: const Text(
                        '1',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            TextField(
              controller: controllerName,
              decoration: const InputDecoration(
                  border: UnderlineInputBorder(), labelText: 'Name'),
            ),
            TextField(
              controller: controllerPrice,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              decoration: const InputDecoration(
                  border: UnderlineInputBorder(), labelText: 'Price (dollars)'),
            ),
            TextField(
              controller: controllerDescription,
              decoration: const InputDecoration(
                  border: UnderlineInputBorder(), labelText: 'Description'),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Flexible(
                      child: Container(
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black26),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20.0)),
                        ),
                        child: ClipRRect(
                          borderRadius:
                              BorderRadius.circular(20), // Image border
                          child: SizedBox(
                            child: Image.network(
                              controllerimageURL.text,
                              alignment: Alignment.center,
                              fit: BoxFit.cover,
                              errorBuilder: (BuildContext context, _, __) {
                                return Container(
                                  alignment: Alignment.topLeft,
                                  padding:
                                      const EdgeInsets.only(top: 10, left: 10),
                                  child: Icon(Icons.image_rounded),
                                );
                              },
                            ),
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 2,
                      child: Container(
                        padding: const EdgeInsets.only(left: 15),
                        height: 150,
                        // color: Colors.green,
                        alignment: Alignment.bottomCenter,
                        child: TextField(
                          controller: controllerimageURL,
                          decoration: const InputDecoration(
                              border: UnderlineInputBorder(),
                              labelText: 'Image URL'),
                          onEditingComplete: () {
                            setState(() {});
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
