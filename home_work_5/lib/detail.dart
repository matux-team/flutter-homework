import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final String _imageReceive;
  final String _nameReceive;
  final int _yearReceive;

  const DetailScreen(this._imageReceive, this._nameReceive, this._yearReceive,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              color: Colors.black,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.6,
              child: Image.network(
                _imageReceive,
                fit: BoxFit.fitHeight,
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 12),
              child: Text(
                'Năm Sinh: $_yearReceive',
                style: const TextStyle(fontWeight: FontWeight.w900),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 10),
              child: Text(_nameReceive,
                  style: const TextStyle(fontWeight: FontWeight.w700)),
            ),
          ],
        ),
      ),
    );
  }
}
