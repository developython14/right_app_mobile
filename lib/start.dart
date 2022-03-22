import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class toma extends StatelessWidget {
  const toma({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List listPagesViewModel = [
      PageViewModel(
        title: "Title of first page",
        body:
            "Here you can write the description of the page, to explain someting...",
        image: Center(
          child: Image.network("https://domaine.com/image.png", height: 175.0),
        ),
      ),
      PageViewModel(
        title: "Title of first page",
        body:
            "Here you can write the description of the page, to explain someting...",
        image: Center(
          child: Image.network("https://domaine.com/image.png", height: 175.0),
        ),
      ),
      PageViewModel(
        title: "Title of first page",
        body:
            "Here you can write the description of the page, to explain someting...",
        image: Center(
          child: Image.network("https://domaine.com/image.png", height: 175.0),
        ),
      ),
      PageViewModel(
        title: "Title of first page",
        body:
            "Here you can write the description of the page, to explain someting...",
        image: Center(
          child: Image.network("https://domaine.com/image.png", height: 175.0),
        ),
      )
    ];
    return Container(
      child: IntroductionScreen(
        pages: [
          PageViewModel(
            title: "Title of first page",
            body:
                "Here you can write the description of the page, to explain someting...",
            image: Center(
              child:
                  Image.network("https://domaine.com/image.png", height: 175.0),
            ),
          ),
          PageViewModel(
            title: "Title of first page",
            body:
                "Here you can write the description of the page, to explain someting...",
            image: Center(
              child:
                  Image.network("https://domaine.com/image.png", height: 175.0),
            ),
          )
        ],
        onDone: () {
          // When done button is press
        },
        showSkipButton: true,
        skip: const Text("Skipm"),
        done: const Text("Done", style: TextStyle(fontWeight: FontWeight.w600)),
      ),
    );
  }
}
