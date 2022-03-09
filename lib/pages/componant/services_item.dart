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
          color: Colors.blue,
          height: 200,
          width: 150,
        )
      ],
    ));
  }
}
