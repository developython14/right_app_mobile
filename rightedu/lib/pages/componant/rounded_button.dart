import 'package:flutter/material.dart';

class roundedbutton extends StatelessWidget {
  final String text;
  final void Function()? press; // Good
  final Color color, textcolor;
  const roundedbutton({
    Key? key,
    required this.text,
    this.press,
    this.color = Colors.black38,
    this.textcolor = Colors.green,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; //get the size of the device ;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      width: size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: FlatButton(
            onPressed: press,
            padding: EdgeInsets.symmetric(
              horizontal: 40.0,
              vertical: 20.0,
            ),
            color: color,
            child: Text(text,
                style: TextStyle(
                  color: textcolor,
                ))),
      ),
    );
  }
}
