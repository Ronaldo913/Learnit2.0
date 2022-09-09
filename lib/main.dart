
import 'package:flutter/material.dart';
import 'package:learnit2/pages/home/home_page.dart';
import 'package:learnit2/pages/animations/animation.dart';
import 'package:learnit2/pages/Previous/login_page.dart';

void main() {
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: AnimationPage(page: Loginpage()),
      ));
}
