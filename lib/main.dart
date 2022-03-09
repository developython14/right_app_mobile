import 'package:flutter/material.dart';
import 'package:right_saudi/pages/start.dart';
import 'package:right_saudi/pages/login_screen/login.dart';
import 'package:right_saudi/test.dart';
import 'package:right_saudi/pages/home/home.dart';

void main() {
  runApp(
      MaterialApp(title: 'mustapha belkassem ', initialRoute: '/home', routes: {
    '/': (context) => const welecome(),
    '/mus': (context) => const login_screen(),
    '/me': (context) => const drme(),
    '/home': (context) => homescreen(),
  }));
}
