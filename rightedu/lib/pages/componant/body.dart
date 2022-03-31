import 'package:flutter/material.dart';
import 'package:right_saudi/pages/componant/background.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:right_saudi/pages/componant/rounded_button.dart';

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
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              'assets/chat.svg',
              height: size.height * 0.45,
            ),
            SizedBox(height: size.height * 0.03),
            roundedbutton(
              text: "login",
              color: Color.fromARGB(255, 111, 25, 248),
              textcolor: Colors.white,
              press: () {},
            ),
            roundedbutton(
              text: "signup",
              color: Color.fromARGB(255, 196, 236, 255),
              textcolor: Colors.black,
              press: () {},
            )
          ]),
    );
  }
}
