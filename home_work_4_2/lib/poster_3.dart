import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Poster3 extends StatelessWidget {
  const Poster3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width * 0.6,
          padding: const EdgeInsets.all(15.0),
          child: Image.network(
            'https://scontent.fhan5-7.fna.fbcdn.net/v/t31.18172-8/23593690_1865809717066002_4289338018334961210_o.jpg?stp=dst-jpg_s851x315&_nc_cat=100&ccb=1-5&_nc_sid=da31f3&_nc_ohc=MjVrjJWMnp8AX_oSrus&_nc_ht=scontent.fhan5-7.fna&oh=00_AT8QltMpzO4-eyCwt_7BwKpS3WA7rI9znM2Va26PoS8Zmg&oe=6264757B',
          ),
        ),
        Flexible(
          fit: FlexFit.tight,
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'Thành Neymar',
                  style: TextStyle(
                      fontSize: 40, fontWeight: FontWeight.w500, height: 1.2),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Siêu Phủi\r\nSiêu Tiền Đạo',
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
