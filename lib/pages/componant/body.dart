import 'package:flutter/material.dart';

class body extends StatelessWidget {
  const body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; //get the size of the device ;

    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(children: <Widget>[
        Positioned(
            top: 0,
            left: 0,
            child: Image.asset(
              "assets/1.png",
              width: size.width * 0.3,
            )),
        Positioned(
            left: 0,
            bottom: 0,
            child: Image.asset(
              "assets/0.png",
              width: size.width * 0.2,
            ))
      ]),
    );
  }
}
