import 'package:flutter/material.dart';

class homescreen extends StatelessWidget {
  const homescreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 212, 223, 233),
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
                margin: EdgeInsets.only(top: 10, right: 20),
                padding: EdgeInsets.all(8),
                child: Image.asset(
                  'assets/0.png',
                  width: 30,
                ),
              ),
              Positioned(
                  top: 15,
                  right: 30,
                  child: Container(
                      height: 8,
                      width: 8,
                      decoration: BoxDecoration(
                          color: Colors.red, shape: BoxShape.circle)))
            ],
          )
        ],
      ),
    );
  }
}
