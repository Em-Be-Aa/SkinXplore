// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:skinxplore/utilities_items/chat_data.dart';
import 'package:skinxplore/utilities_items/chat_storage.dart';
import 'package:skinxplore/utilities_items/http.dart';

class ChatPanel extends StatefulWidget {
  const ChatPanel({super.key});

  @override
  State<ChatPanel> createState() => _ChatPanelState();
}

class _ChatPanelState extends State<ChatPanel> {
  bool _isTyping = false;
  bool isContainerVisible = true;

  late TextEditingController textEditingController;
  late FocusNode focusNode;
  late ScrollController _listScrollController;

  @override
  void initState() {
    _listScrollController = ScrollController();
    textEditingController = TextEditingController();
    focusNode = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    _listScrollController.dispose();
    textEditingController.dispose();
    focusNode.dispose();
    super.dispose();
  }

  List<ChatModel> chatList = [];

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: isContainerVisible,
      child: Align(
        alignment: Alignment.bottomRight,
        child: Padding(
          padding: const EdgeInsets.all(80.0),
          child: BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 5,
              sigmaY: 5,
            ),
            child: Container(
              width: 400,
              height: 500,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white.withOpacity(0.7),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: SafeArea(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Color(0xFF2C323F).withOpacity(0.2),
                              border: Border.all(
                                color: Color(0xFF2C323F),
                                width: 0.0,
                              ),
                            ),
                            child: IconButton(
                              iconSize: 20,
                              onPressed: () {
                                setState(() {
                                  isContainerVisible = !isContainerVisible;
                                });
                              },
                              icon: Icon(
                                Icons.arrow_back,
                                color: Color(0xFF2C323F),
                                size: 20,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Flexible(
                        child: ListView.builder(
                            controller: _listScrollController,
                            itemCount: chatList.length,
                            itemBuilder: (context, index) {
                              return ChatData(
                                msg: chatList[index].msg,
                                chatIndex: chatList[index].index,
                              );
                            }),
                      ),
                      if (_isTyping) ...[
                        const SpinKitFoldingCube(
                          color: Color(0xFF146356),
                          size: 15,
                        ),
                      ],
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.grey.withOpacity(0.5),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Row(
                            children: [
                              Expanded(
                                child: TextField(
                                  focusNode: focusNode,
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF2C323F),
                                  ),
                                  controller: textEditingController,
                                  onSubmitted: (value) async {
                                    await sendMessageFCT();
                                  },
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "How can I help you ?",
                                    hintStyle: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF2C323F).withOpacity(0.5),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: Color(0xFF2C323F),
                                  ),
                                  child: Center(
                                    child: IconButton(
                                      iconSize: 15,
                                      color: Colors.white,
                                      onPressed: () async {
                                        await sendMessageFCT();
                                      },
                                      icon: Icon(
                                        Icons.send,
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void scrollListtoend() {
    _listScrollController.animateTo(
        _listScrollController.position.maxScrollExtent,
        duration: const Duration(seconds: 1),
        curve: Curves.easeOut);
  }

  Future<void> sendMessageFCT() async {
    if (textEditingController.text.isEmpty) {
      return;
    }
    if (_isTyping) {
      return;
    }
    try {
      String messages = textEditingController.text;
      setState(() {
        _isTyping = true;
        chatList.add(ChatModel(msg: textEditingController.text, index: 0));
        textEditingController.clear();
        focusNode.unfocus();
      });
      chatList.addAll(await ApiService.sendMessage(
        message: messages,
        modelId: "gpt-3.5-turbo-0125",
      ));
      setState(() {});
    } catch (error) {
      print("error $error");
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: Colors.red,
          content: Text(
            error.toString(),
          ),
        ),
      );
    } finally {
      setState(() {
        scrollListtoend();
        _isTyping = false;
      });
    }
  }
}
