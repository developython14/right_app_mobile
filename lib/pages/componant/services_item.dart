import 'package:flutter/material.dart';
import 'package:right_saudi/pages/componant/service_model.dart';

class servicesitem extends StatelessWidget {
  final Service service;

  servicesitem(this.service);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Stack(
      children: [
        Container(
          height: 250,
          width: 250,
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 172, 255, 174),
              borderRadius: BorderRadius.circular(25)),
          child: Column(children: [
            Expanded(
              flex: 2,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25)),
                child: Image.asset(
                  'assets/mustapha.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Expanded(flex: 1, child: Text("hello mustapha belkassem"))
          ]),
        )
      ],
    ));
  }
}
