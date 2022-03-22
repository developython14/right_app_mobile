import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class toma extends StatelessWidget {
  const toma({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: IntroductionScreen(
      pages: [
        PageViewModel(
            title: "hi mustapha",
            body: 'toma hook your are big',
            image: Image.asset('assets/start_app/0.jpg')),
        PageViewModel(
            title: "hi mustapha",
            body: 'toma hook your are big',
            image: Image.asset('assets/start_app/1.jpg')),
        PageViewModel(
            title: "hi mustapha",
            body: 'toma hook your are big',
            image: Image.asset('assets/start_app/2.jpg')),
        PageViewModel(
            title: "hi mustapha",
            body: 'toma hook your are big',
            image: Image.asset('assets/start_app/3.jpg')),
        PageViewModel(
            title: "hi mustapha",
            body: 'toma hook your are big',
            image: Image.asset('assets/start_app/4.jpg'))
      ],
      done: const Text("Done", style: TextStyle(fontWeight: FontWeight.w600)),
      skip: const Text("skip", style: TextStyle(fontWeight: FontWeight.w600)),
      next: const Text("next", style: TextStyle(fontWeight: FontWeight.w600)),
      showSkipButton: true,
      showNextButton: true,
      onDone: () {
        // When done button is press
      },
    ));
  }
}
