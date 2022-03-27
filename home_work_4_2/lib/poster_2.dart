import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Poster2 extends StatelessWidget {
  const Poster2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'Nguyễn Tiến Thành',
                  style: TextStyle(
                      fontSize: 40, fontWeight: FontWeight.w500, height: 1.2),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Embedded Engineer\r\nKỹ Sư Lập Trình Nhúng',
                  style: TextStyle(fontSize: 22, height: 1.2),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
        Container(
            width: MediaQuery.of(context).size.width * 0.5,
            padding: const EdgeInsets.all(20),
            child: Image.network(
              'https://scontent.fhan5-8.fna.fbcdn.net/v/t1.6435-9/167577317_2811088322538132_1573392957606755652_n.jpg?stp=dst-jpg_s851x315&_nc_cat=107&ccb=1-5&_nc_sid=da31f3&_nc_ohc=Ehe5RoYy-PkAX9pvJv6&_nc_ht=scontent.fhan5-8.fna&oh=00_AT-b3vFozrD34qPFUZhnpRsE9y30ZtM-cUC39i48yepRfw&oe=6266F97D',
              alignment: Alignment.centerRight,
              fit: BoxFit.fill,
            )),
      ],
    );
  }
}
