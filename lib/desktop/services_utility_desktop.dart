// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:skinxplore/desktop_utilities_items/services_items.dart';

class ServicesUtility extends StatelessWidget {
  const ServicesUtility({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE8E4EC),
      body: SingleChildScrollView(
        child: ServicesItems(),
      ),
    );
  }
}
