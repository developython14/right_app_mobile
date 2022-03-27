import 'package:flutter/material.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromARGB(255, 255, 255, 255),
        padding: EdgeInsets.all(50.0),
        child: Column(
            children: [Text('mustapha belkassem'), Text("i'm a good one ")]),
      ),
    );
  }
}
