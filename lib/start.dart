import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class toma extends StatelessWidget {
  const toma({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    returnchild:IntroductionScreen(
  pages: listPagesViewModel,
  done: const Text("Done", style: TextStyle(fontWeight: FontWeight.w600)),
  onDone: () {
    // When done button is press
  },
); //Material App Container(
      child:IntroductionScreen(
  pages: listPagesViewModel,
  done: const Text("Done", style: TextStyle(fontWeight: FontWeight.w600)),
  onDone: () {
    // When done button is press
  },
); //Material App
    );
  }
}