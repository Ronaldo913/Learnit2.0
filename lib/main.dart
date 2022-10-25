import 'package:flutter/material.dart';
import 'package:learnit2/pages/splash/animation.dart';
import 'package:learnit2/pages/Previous/login_page.dart';

void main() {
  runApp(
      const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: AnimationPage(page: Loginpage()),
      ));
}
