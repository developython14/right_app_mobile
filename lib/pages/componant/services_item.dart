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
              color: Color.fromARGB(255, 124, 126, 125),
              borderRadius: BorderRadius.circular(25)),
          child: Column(children: [
            Expanded(
              flex: 2,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25)),
                child: Image.asset(
                  service.imageurl,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'assets/mustapha.jpg',
                              width: 20,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              service.title,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(service.details),
                              Text(
                                '80£',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            ])
                      ]),
                ))
          ]),
        ),
        Positioned(
            right: 20,
            bottom: 60,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 34, 247, 165),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15))),
              child: Text('more'),
              onPressed: () {},
            ))
      ],
    ));
  }
}
