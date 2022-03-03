import 'package:flutter/material.dart';
import 'package:right_saudi/pages/componant/background.dart';
import 'package:flutter_svg/flutter_svg.dart';

class body extends StatelessWidget {
  const body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; //get the size of the device ;

    return background(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "welcome to right plateforme",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SvgPicture('assets/start.jpg')
          ]),
    );
  }
}
