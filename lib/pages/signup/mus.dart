import 'package:flutter/material.dart';

class mydesign extends StatelessWidget {
  const mydesign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; //get the size of the device ;
    return Container(
      child: Column(children: [
        Container(
          color: Colors.green,
        ),
        Container(
          color: Colors.red,
        )
      ]),
    );
  }
}
