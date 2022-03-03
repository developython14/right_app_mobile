import 'package:flutter/material.dart';
import 'package:right_saudi/pages/start.dart';
import 'package:right_saudi/pages/login_screen/login.dart';

void main() {
  runApp(
      MaterialApp(title: 'ustapha belkassem ', initialRoute: '/mus', routes: {
    '/': (context) => const welecome(),
    '/mus': (context) => const login_screen(),
  }));
}
