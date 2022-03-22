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
            image: Image.asset('assets/mustapha.jpg')),
        PageViewModel(title: "hi mustapha", body: 'toma hook your are big'),
        PageViewModel(title: "hi mustapha", body: 'toma hook your are big'),
        PageViewModel(title: "hi mustapha", body: 'toma hook your are big'),
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
