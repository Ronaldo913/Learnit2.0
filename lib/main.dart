import 'package:flutter/material.dart';
import 'package:learnit2/pages/home_page.dart';
import 'package:learnit2/pages/animation.dart';
import 'package:learnit2/pages/login_page.dart';

void main() {
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: AnimationPage(page: Loginpage()),
      ));
}
