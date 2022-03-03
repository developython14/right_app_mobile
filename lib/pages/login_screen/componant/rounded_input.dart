import 'package:flutter/material.dart';
import 'package:right_saudi/pages/login_screen/componant/textfield.dart';

class roundedinput extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onchanged;

  const roundedinput({
    Key? key,
    required this.hintText,
    required this.icon,
    required this.onchanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return textfieldcontainer(
        child: TextField(
            decoration: InputDecoration(
      hintText: hintText,
      border: InputBorder.none,
      icon: Icon(icon, color: Color.fromARGB(255, 83, 235, 88)),
    )));
  }
}
