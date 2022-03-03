import 'package:flutter/material.dart';
import 'package:right_saudi/pages/componant/rounded_button.dart';
import 'package:right_saudi/pages/login_screen/componant/background.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:right_saudi/pages/login_screen/componant/textfield.dart';
import 'package:right_saudi/pages/login_screen/componant/rounded_input.dart';
import 'package:right_saudi/pages/login_screen/componant/rounded_password.dart';

class body extends StatelessWidget {
  const body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; //get the size of the device ;
    return background(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          "LOGIN",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        SvgPicture.asset(
          "assets/login.svg",
          height: size.height * 0.35,
        ),
        roundedinput(
          hintText: "write your email",
          icon: Icons.person,
          onchanged: (value) {},
        ),
        roundedpassword(
          onchanged: (value) {},
        ),
        roundedbutton(text: 'Login'),
      ],
    ));
  }
}
