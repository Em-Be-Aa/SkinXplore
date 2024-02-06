// ignore_for_file: prefer_const_constructors, camel_case_types, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:skinxplore/utilities_items/chat_panel.dart';

class Chat_Utility extends StatefulWidget {
  const Chat_Utility({super.key});

  @override
  State<Chat_Utility> createState() => _Chat_UtilityState();
}

class _Chat_UtilityState extends State<Chat_Utility> {
  bool isContainerVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFE8E4EC),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(0),
          child: Container(
            color: Color(0xFF2C323F),
            height: 0.3,
          ),
        ),
        leading: Padding(
          padding: const EdgeInsets.all(1),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.transparent,
                image: DecorationImage(
                    image: AssetImage('assets/images/skan.png'),
                    alignment: Alignment.centerLeft)),
          ),
        ),
        title: Text(
          'Skan AI',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Color(0xFF2C323F),
          ),
        ),
      ),
      body: Stack(
        children: [
          TextButton(
            onPressed: () {
              setState(() {
                isContainerVisible = !isContainerVisible;
              });
            },
            child: Text('Toggle Container'),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              color: Colors.green,
              height: 200,
              width: 200,
            ),
          ),
          Visibility(
            visible: isContainerVisible,
            child: ChatPanel(),
          ),
        ],
      ),
    );
  }
}
