// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:skinxplore/utilities/chat_utility.dart';

class Chat extends StatelessWidget {
  const Chat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Chat_Utility(),
    );
  }
}
