// ignore_for_file: avoid_print

import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:skinxplore/desktop_utilities_items/chat_storage.dart';
import 'package:skinxplore/desktop_utilities_items/models.dart';
import 'api_key.dart';

fetchdata(String url) async {
  http.Response response = await http.get(Uri.parse(url));
  return response.body;
}

class ApiService {
  static Future<List<ModelsModel>> getModels() async {
    try {
      var response = await http.get(
          Uri.parse("https://api.openai.com/v1/models"),
          headers: {'Authorization': 'Bearer $API_KEY'});
      Map jsonResponse = jsonDecode(response.body);
      if (jsonResponse['error'] != null) {
        // print('json error ${jsonResponse['error']['message']}');
        throw HttpException(jsonResponse['error']['message']);
      }
      // print("Json $jsonResponse");

      List temp = [];
      for (var i in jsonResponse['data']) {
        temp.add(i);
        print("temp ${i['id']}");
      }
      return ModelsModel.modelsfromSnapshot(temp);
    } catch (error) {
      print("Error $error");
      rethrow;
    }
  }

  static Future<List<ChatModel>> sendMessage(
      {required String message, required String modelId}) async {
    try {
      var response = await http.post(
        Uri.parse("https://api.openai.com/v1/chat/completions"),
        headers: {
          'Authorization': 'Bearer $API_KEY',
          'Content-Type': 'application/json',
        },
        body: jsonEncode(
          {
            "model": "gpt-3.5-turbo-0125",
            "messages": [
              {"role": "assistant", "content": 'Act as a Skin Care Bot, Vert and give short answers.' + message}
            ],
            "temperature": 0.7,
          },
        ),
      );
      Map jsonResponse = jsonDecode(response.body);
      if (jsonResponse['error'] != null) {
        // print('json error ${jsonResponse['error']['message']}');
        throw HttpException(jsonResponse['error']['message']);
      }
      // print("Json $jsonResponse");
      List<ChatModel> chatList = [];
      if (jsonResponse['choices'].length > 0) {
        //print("Text: ${jsonResponse['choices'][0]['message']['content']}");
        chatList = List.generate(
          jsonResponse['choices'].length,
          (index) => ChatModel(
            msg: jsonResponse['choices'][index]['message']['content'],
            index: 1,
          ),
        );
      }
      return chatList;
    } catch (error) {
      print("1Error $error");
      rethrow;
    }
  }
}
