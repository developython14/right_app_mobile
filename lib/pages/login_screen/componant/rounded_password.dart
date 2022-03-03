import 'package:flutter/material.dart';
import 'package:right_saudi/pages/login_screen/componant/textfield.dart';

class roundedpassword extends StatelessWidget {
  final ValueChanged<String> onchanged;
  const roundedpassword({
    Key? key,
    required this.onchanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return textfieldcontainer(
        child: TextField(
            obscureText: true,
            decoration: InputDecoration(
                hintText: "password",
                border: InputBorder.none,
                icon: Icon(Icons.lock),
                suffixIcon: Icon(
                  Icons.visibility,
                  color: Colors.green,
                ))));
  }
}
