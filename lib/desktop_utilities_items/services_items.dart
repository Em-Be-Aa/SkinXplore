// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:skinxplore/desktop_utilities_items/services_bottom.dart';
import 'package:skinxplore/desktop_utilities_items/services_top.dart';

class ServicesItems extends StatelessWidget {
  const ServicesItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/homepage');
              },
              child: Container(
                height: 106,
                width: 105,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  image: DecorationImage(
                      image: AssetImage('assets/images/logo.png'),
                      alignment: Alignment.centerLeft),
                ),
              ),
            ),
          ],
        ),
        ServicesTop(),
        ServicesBottom(),
      ],
    );
  }
}
