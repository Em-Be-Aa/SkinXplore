// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:skinxplore/desktop/detail_exam_utility_desktop.dart';

class DetailExam extends StatelessWidget {
  const DetailExam({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DetailExamUtility(),
    );
  }
}
