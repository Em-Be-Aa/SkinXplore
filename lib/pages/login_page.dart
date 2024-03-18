// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:skinxplore/desktop/login_utility.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Opacity(
          opacity: 1,
          child: Container(
            decoration: BoxDecoration(
                color: Color(0XFFE8E4EC),
                image: DecorationImage(
                  image: AssetImage('assets/images/login.jpg'),
                  fit: BoxFit.cover,
                )),
          ),
        ),
        Opacity(
          opacity: 0.85,
          child: Container(
            decoration: BoxDecoration(
              color: Color(0XFFE8E4EC),
            ),
          ),
        ),
        LoginUtility(),
      ]),
    );
  }
}
