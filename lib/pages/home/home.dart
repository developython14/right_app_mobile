import 'package:flutter/material.dart';

class homescreen extends StatelessWidget {
  const homescreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: false,
        title: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text(
            'Hello mustapha !!',
            style: TextStyle(
              color: Color.fromARGB(255, 255, 62, 245),
              fontSize: 16,
            ),
          ),
        ),
        actions: [
          Stack(
            children: [
              Container(
                child: Image.asset(
                  'assets/0.jpg',
                  width: 30,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
