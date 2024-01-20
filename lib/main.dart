// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:skinxplore/pages/about_page.dart';
import 'package:skinxplore/pages/detail_exam.dart';
import 'package:skinxplore/utilities/image_class_backend.dart';
import 'package:skinxplore/pages/home_page.dart';
import 'package:skinxplore/pages/login_page.dart';
import 'package:skinxplore/pages/services_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
        routes: {
          '/homepage': (context) => HomePage(),
          '/servicespage': (context) => ServicesPage(),
          '/loginpage': (context) => LoginPage(),
          '/aboutpage': (context) => AboutPage(),
          '/flupage': (context) => MyHomePage(),
          '/detailexampage': (context) =>DetailExam(),
        });
  }
}
