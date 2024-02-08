// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:skinxplore/constants/break_points.dart';

class ChatData extends StatelessWidget {
  const ChatData({super.key, required this.msg, required this.chatIndex});
  final String msg;
  final int chatIndex;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Padding(
            padding: const EdgeInsets.all(1),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: chatIndex % 2 == 0
                  ? MainAxisAlignment.end
                  : MainAxisAlignment.start,
              children: [
                chatIndex % 2 == 1
                    ? Image.asset(
                        'assets/images/skan.png',
                        height: 30,
                        width: 30,
                      )
                    : msg.length < 60
                        ? Flexible(
                            child: Container(
                              decoration: BoxDecoration(
                                color: chatIndex % 2 == 0
                                    ? Colors.grey.withOpacity(0.3)
                                    : Color(0xFF146356).withOpacity(0.3),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                  bottomLeft: Radius.circular(10),
                                ), // Set border radius to create curved edges
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(9.0),
                                child: Text(
                                  msg,
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFF2C323F),
                                    letterSpacing: 0.4,
                                  ),
                                ),
                              ),
                            ),
                          )
                        : Container(
                            width: 300,
                            decoration: BoxDecoration(
                              color: chatIndex % 2 == 0
                                  ? Colors.grey.withOpacity(0.3)
                                  : Color(0xFF146356).withOpacity(0.3),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                              ), // Set border radius to create curved edges
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(9.0),
                              child: Text(
                                msg,
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color(blackColor),
                                  letterSpacing: 0.4,
                                ),
                              ),
                            ),
                          ),
                chatIndex % 2 == 1
                    ? msg.length < 60
                        ? Flexible(
                            child: Container(
                              decoration: BoxDecoration(
                                color: chatIndex % 2 == 0
                                    ? Colors.grey.withOpacity(0.3)
                                    : Color(0xFF146356).withOpacity(0.3),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                  bottomRight: Radius.circular(10),
                                ), // Set border radius to create curved edges
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(9.0),
                                child: AnimatedTextKit(
                                  isRepeatingAnimation: false,
                                  repeatForever: false,
                                  displayFullTextOnTap: true,
                                  animatedTexts: [
                                    TyperAnimatedText(
                                      msg.trim(),
                                      curve: Curves.easeOut,
                                      speed: Duration(milliseconds: 25),
                                      textStyle: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xFF2C323F),
                                        letterSpacing: 0.4,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )
                        : Container(
                            width: 300,
                            decoration: BoxDecoration(
                              color: chatIndex % 2 == 0
                                  ? Colors.grey.withOpacity(0.3)
                                  : Color(0xFF146356).withOpacity(0.3),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ), // Set border radius to create curved edges
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(9.0),
                              child: AnimatedTextKit(
                                isRepeatingAnimation: false,
                                repeatForever: false,
                                displayFullTextOnTap: true,
                                animatedTexts: [
                                  TyperAnimatedText(
                                    msg.trim(),
                                    curve: Curves.easeOut,
                                    speed: Duration(milliseconds: 25),
                                    textStyle: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xFF2C323F),
                                      letterSpacing: 0.4,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                    : Image.asset(
                        'assets/images/chatbot.png',
                        height: 30,
                        width: 30,
                      )
              ],
            ),
          ),
        ),
        SizedBox(
          height: 20,
        )
      ],
    );
  }
}
