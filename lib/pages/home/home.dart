import 'package:flutter/material.dart';
import 'package:right_saudi/pages/componant/c_home.dart';
import 'package:right_saudi/pages/login_screen/componant/rounded_password.dart';
import 'package:right_saudi/pages/componant/services_item.dart';
import 'package:right_saudi/pages/componant/service_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:right_saudi/test.dart';

const Color back = Colors.grey;
const Color front = Colors.white;
final List<String> imgList = [
  'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
  'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
];

class homescreen extends StatelessWidget {
  final List listservices = Service.generateservices();
  homescreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            MyHeaderDrawer(),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Profile'),
            ),
            ListTile(
              leading: Icon(Icons.notifications),
              title: Text('notifications'),
            ),
            ListTile(
              leading: Icon(Icons.message),
              title: Text('Messages'),
            ),
            ListTile(
              leading: Icon(Icons.history),
              title: Text('hisorique'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('logout'),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              emoji_text(),
              searchbar(),
              Container(
                margin: EdgeInsets.only(top: 25, bottom: 25),
                child: CarouselSlider(
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
                            child: Image.network(
                              imgList[i],
                              fit: BoxFit.cover,
                            ));
                      },
                    );
                  }).toList(),
                ),
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
