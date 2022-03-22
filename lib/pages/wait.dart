import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class wait extends StatelessWidget {
  const wait({Key? key}) : super(key: key);

  @override
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: SpinKitFadingCircle(
      size:80,
      itemBuilder: (BuildContext context, int index) {
        return DecoratedBox(
          decoration: BoxDecoration(
            color: index.isEven ? Colors.red : Colors.green,
          ),
        );
      },
    )));
  }
}
