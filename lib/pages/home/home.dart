import 'package:flutter/material.dart';
import 'package:right_saudi/pages/componant/c_home.dart';
import 'package:right_saudi/pages/login_screen/componant/rounded_password.dart';
import 'package:right_saudi/pages/componant/services_item.dart';
import 'package:right_saudi/pages/componant/service_model.dart';

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
      body: SingleChildScrollView(
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              emoji_text(),
              searchbar(),
              categorytitle(
                lefttext: "topservices",
                righttext: "view all",
              ),
              Column(
                children: [
                  Container(
                      height: 300,
                      child: ListView.separated(
                          separatorBuilder: (BuildContext context, int index) =>
                              SizedBox(
                                width: 10,
                              ),
                          scrollDirection: Axis.horizontal,
                          itemCount: listservices.length,
                          itemBuilder: (context, index) =>
                              servicesitem(listservices[index])))
                ],
              )
            ]),
      ),
    );
  }
}
