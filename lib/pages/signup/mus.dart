import 'package:flutter/material.dart';

class mydesign extends StatelessWidget {
  const mydesign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; //get the size of the device ;
    return Container(
      padding: const EdgeInsets.all(8.0),
      margin: const EdgeInsets.all(50.0),
      child: Stack(
        children: <Widget>[
          Positioned(
            top: 100,
            left: 100,
            child: Container(
              width: 100,
              height: 100,
              color: Colors.red,
            ),
          ),
          Positioned(
            top: 200,
            left: 200,
            child: Container(
              width: 100,
              height: 100,
              color: Color.fromARGB(255, 0, 224, 120),
            ),
          ),
          Positioned(
            child: Container(
              width: 100,
              height: 100,
              color: Color.fromARGB(255, 62, 18, 68),
            ),
          ),
        ],
      ),
    );
  }
}
