import 'package:flutter/material.dart';
import 'package:right_saudi/pages/login.dart';
import 'package:right_saudi/pages/signup.dart';
import 'package:right_saudi/pages/start.dart';

void main() {
  runApp(MaterialApp(title: 'ustapha belkassem ', initialRoute: '/', routes: {
    '/': (context) => const welecome(),
  }));
}
