import 'package:flutter/material.dart';

class background extends StatelessWidget {
  final Widget child;
  const background({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; //get the size of the device ;
    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(alignment: Alignment.center, children: <Widget>[
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
            )),
        child
      ]),
    );
  }
}
