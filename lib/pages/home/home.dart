import 'package:flutter/material.dart';
import 'package:right_saudi/pages/componant/c_home.dart';
import 'package:right_saudi/pages/login_screen/componant/rounded_password.dart';
import 'package:right_saudi/pages/componant/services_item.dart';
import 'package:right_saudi/pages/componant/service_model.dart';
import 'package:carousel_slider/carousel_slider.dart';

const Color back = Colors.grey;
const Color front = Colors.white;

class homescreen extends StatelessWidget {
  final List listservices = Service.generateservices();
  homescreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: back,
        centerTitle: false,
        title: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text(
            'Hello mustapha !!',
            style: TextStyle(
              color: front,
              fontSize: 16,
            ),
          ),
        ),
        actions: [
          Stack(
            children: [
              Container(
                margin: EdgeInsets.only(top: 10, right: 20),
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  border: Border.all(
                      color:
                          Color.fromARGB(255, 246, 255, 246).withOpacity(0.3),
                      width: 2),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Icon(Icons.notifications),
              ),
              Positioned(
                  top: 15,
                  right: 30,
                  child: Container(
                      height: 8,
                      width: 8,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 219, 210, 209),
                          shape: BoxShape.circle)))
            ],
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'search',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'notifications',
            backgroundColor: Color.fromARGB(255, 41, 189, 41),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'home',
            backgroundColor: Colors.purple,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'profile',
            backgroundColor: Colors.pink,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'services',
            backgroundColor: Colors.pink,
          ),
        ],
        currentIndex: 0,
        selectedItemColor: Colors.amber[800],
      ),
      body: SingleChildScrollView(
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              emoji_text(),
              searchbar(),
              CarouselSlider(
                options: CarouselOptions(
                  height: 300.0,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                ),
                items: [1, 2, 3, 4, 5].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.symmetric(horizontal: 5.0),
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 216, 216, 216)),
                          child: Image.asset(
                            'assets/mustapha.jpg',
                            fit: BoxFit.cover,
                          ));
                    },
                  );
                }).toList(),
              ),
              categorytitle(
                lefttext: "topservices",
                righttext: "view all",
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Container(
                        height: 300,
                        child: ListView.separated(
                            padding: EdgeInsets.all(25),
                            separatorBuilder:
                                (BuildContext context, int index) => SizedBox(
                                      width: 10,
                                    ),
                            scrollDirection: Axis.horizontal,
                            itemCount: listservices.length,
                            itemBuilder: (context, index) =>
                                servicesitem(listservices[index])))
                  ],
                ),
              ),
              categorytitle(
                lefttext: "top blogs",
                righttext: "view all",
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Container(
                        height: 300,
                        child: ListView.separated(
                            padding: EdgeInsets.all(25),
                            separatorBuilder:
                                (BuildContext context, int index) => SizedBox(
                                      width: 10,
                                    ),
                            scrollDirection: Axis.horizontal,
                            itemCount: listservices.length,
                            itemBuilder: (context, index) =>
                                servicesitem(listservices[index])))
                  ],
                ),
              ),
            ]),
      ),
    );
  }
}
