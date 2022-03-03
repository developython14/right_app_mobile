import 'package:flutter/material.dart';

class textfieldcontainer extends StatelessWidget {
  final Widget child;
  const textfieldcontainer({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; //get the size of the device ;
    return Container(
        width: size.width * 0.8,
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
        margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 181, 36, 238),
          borderRadius: BorderRadius.circular(20),
        ),
        child: child);
  }
}
