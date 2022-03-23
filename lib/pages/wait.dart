import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class wait extends StatefulWidget {
  const wait({Key? key}) : super(key: key);

  @override
  State<wait> createState() => _waitState();
}

class _waitState extends State<wait> {
  void data() async {
    await Future.delayed(Duration(seconds: 10));
    Navigator.pushNamed(context, '/hack');
  }

  @override
  void initState() {
    print('hi be!!!!');
    super.initState();
    print('hi be!!!!');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: SpinKitFadingCircle(
      size: 150,
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
