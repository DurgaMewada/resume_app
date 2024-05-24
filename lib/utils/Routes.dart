import 'package:flutter/material.dart';
import 'package:resume_app/Screen/Education.dart';
import 'package:resume_app/Screen/Experience.dart';
import 'package:resume_app/Screen/HomeScreen.dart';
import 'package:resume_app/Screen/Languages.dart';
import 'package:resume_app/Screen/Objective.dart';
import 'package:resume_app/Screen/PDF.dart';
import 'package:resume_app/Screen/PersonalDetails.dart';
import 'package:resume_app/Screen/Project.dart';
import 'package:resume_app/Screen/Reference.dart';
import 'package:resume_app/Screen/Skills.dart';
import 'package:resume_app/Screen/SplashScreen.dart';

import '../Screen/Logo.dart';

class Approutes{
  static Map<String, Widget Function(BuildContext)> routes = {
    '/': (context) => Logoscreen(),
    '/splash': (context) => Splashscreen(),
    '/home': (context) => Home(),
    '/personal': (context) => PersonalDetails(),
    '/edu': (context) => Education(),
    '/experience': (context) => Experience(),
    '/skill': (context) => Skills(),
    '/obj': (context) => Objective(),
    '/ref': (context) => Reference(),
    '/pro': (context) => Projects(),
    '/language': (context) => Languages(),
    '/pdf': (context) => PdfScreen(),
  };
  }