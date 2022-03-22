import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class toma extends StatefulWidget {
  const toma({Key? key}) : super(key: key);

  @override
  State<toma> createState() => _tomaState();
}

class _tomaState extends State<toma> {
  late PageController _pageController;
  List<Widget> slideList = [];
  int initialPage = 0;
  @override
  void initState() {
    _pageController = PageController(initialPage: 2);
    initialPage = _pageController.initialPage;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GFIntroScreen(
        color: Colors.blueGrey,
        slides: slides(),
        pageController: _pageController,
        currentIndex: initialPage,
        pageCount: 3,
        introScreenBottomNavigationBar: GFIntroScreenBottomNavigationBar(
          pageController: _pageController,
          pageCount: slideList.length,
          currentIndex: initialPage,
          backButtonText: 'Previous',
          forwardButtonText: 'Next',
          skipButtonText: 'Skip',
          doneButtonText: 'Done',
          navigationBarHeight: 50,
          navigationBarWidth: 300,
          navigationBarShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(60),
          ),
          navigationBarColor: Color.fromARGB(255, 0, 0, 0),
          showDivider: false,
          dotHeight: 60,
          dotWidth: 80,
          dotShape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          inactiveColor: Color.fromARGB(255, 196, 120, 120),
          activeColor: GFColors.SUCCESS,
          dotMargin: EdgeInsets.symmetric(horizontal: 6),
          showPagination: true,
        ),
      ),
    );
  }

  List<Widget> slides() {
    slideList = [
      Container(
        child: GFImageOverlay(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.all(16),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 70.0, left: 20),
                child: Text(
                  'Welcome mustapha !',
                  style: TextStyle(
                      color: Colors.white,
                      decoration: TextDecoration.none,
                      fontSize: 25),
                ),
              ),
            ],
          ),
          color: Colors.orange,
          image: const AssetImage('assets/signup.jpg'),
          boxFit: BoxFit.cover,
          colorFilter:
              ColorFilter.mode(Colors.black.withOpacity(0.2), BlendMode.darken),
          borderRadius: BorderRadius.circular(5),
        ),
      ),
      Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(0),
            image: DecorationImage(
              image: AssetImage('assets/signup.jpg'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.2), BlendMode.darken),
            )),
      ),
      Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(0),
            image: DecorationImage(
              image: AssetImage('assets/signup.jpg'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.2), BlendMode.darken),
            )),
      ),
      Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(0),
            image: DecorationImage(
              image: AssetImage('assets/signup.jpg'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.2), BlendMode.darken),
            )),
      ),
    ];
    return slideList;
  }
}
