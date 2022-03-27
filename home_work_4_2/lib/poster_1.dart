import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Poster1 extends StatelessWidget {
  const Poster1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width * 0.35,
            padding:
                const EdgeInsets.only(left: 20, right: 10, top: 40, bottom: 40),
            child: Image.network(
              'https://scontent.fhan5-2.fna.fbcdn.net/v/t39.30808-6/241192253_2941346129512350_6568016171995758702_n.jpg?stp=c0.104.630.630a_dst-jpg_s851x315&_nc_cat=102&ccb=1-5&_nc_sid=da31f3&_nc_ohc=sZjm4SO4tdoAX9bjvQX&tn=oSACJetOWwzxo-37&_nc_ht=scontent.fhan5-2.fna&oh=00_AT-YAoVirxKz9UDbwdAOIIVORdx4Owm7WEYtXoZi7XvZig&oe=6244D15C',
              alignment: Alignment.centerLeft,
            )),
        Expanded(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'Nguyễn Tiến Thành',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.w500),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Automation Engineer\r\nKỹ Sư Điều Khiển Tự Động',
                  style: TextStyle(fontSize: 22, height: 1.2),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
