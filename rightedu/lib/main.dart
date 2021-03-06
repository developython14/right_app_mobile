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
      MaterialApp(title: 'Mustapha Belkassem', initialRoute: '/mus', routes: {
    '/': (context) => const welecome(),
    '/mus': (context) => login(),
    '/me': (context) => const drme(),
    '/home': (context) => homescreen(),
    '/mustapha': (context) => MyCustomForm(),
    '/intro': (context) => toma(),
    '/wait': (context) => wait(),
  }));
}