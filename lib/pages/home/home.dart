import 'package:flutter/material.dart';

const Color back = Colors.grey;
const Color front = Colors.white;

class homescreen extends StatelessWidget {
  const homescreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: back,
        centerTitle: false,
        title: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text(
            'Hello mustapha !!',
            style: TextStyle(
              color: front,
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
                decoration: BoxDecoration(
                  border: Border.all(
                      color:
                          Color.fromARGB(255, 246, 255, 246).withOpacity(0.3),
                      width: 2),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Icon(Icons.notifications),
              ),
              Positioned(
                  top: 15,
                  right: 30,
                  child: Container(
                      height: 8,
                      width: 8,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 219, 210, 209),
                          shape: BoxShape.circle)))
            ],
          )
        ],
      ),
    );
  }
}
