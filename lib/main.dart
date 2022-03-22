import 'package:flutter/material.dart';
import 'package:right_saudi/pages/start.dart';
import 'package:right_saudi/pages/login_screen/login.dart';
import 'package:right_saudi/test.dart';
import 'package:right_saudi/pages/home/home.dart';
import 'package:right_saudi/pages/signup/signup.dart';
import 'package:right_saudi/pages/signup/mus.dart';
import 'package:right_saudi/start.dart';
import 'package:right_saudi/pages/wait.dart';

void main() {
  runApp(
      MaterialApp(title: 'mustapha belassem ', initialRoute: '/wait', routes: {
    '/': (context) => const welecome(),
    '/mus': (context) => const login_screen(),
    '/me': (context) => const drme(),
    '/home': (context) => homescreen(),
    '/mustapha': (context) => MyCustomForm(),
    '/hack': (context) => toma(),
    '/wait': (context) => wait(),
  }));
}
