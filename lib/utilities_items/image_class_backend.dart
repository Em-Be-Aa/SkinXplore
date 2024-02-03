// ignore_for_file: prefer_const_constructors, prefer_interpolation_to_compose_strings, prefer_typing_uninitialized_variables

import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:skinxplore/utilities_items/http.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String url = '';
  var data;
  String output = 'Waiting for results';
  double percent = 0;
  String output1 = 'Waiting for results';
  File? image;

  Future<String> getdata() async {
    final image = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (image == null) return '';

    final imagetemp = File(image.path);
    setState(() => this.image = imagetemp);
    return '';
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 320,
        ),
        Column(
          children: [
            SizedBox(
              height: 370,
            ),
            ElevatedButton(
                onPressed: () => getdata(),
                style: ElevatedButton.styleFrom(
                    elevation: 0,
                    padding: EdgeInsets.zero,
                    backgroundColor: Color(0X2C323F).withOpacity(0.8)),
                child: image != null
                    ? Image.file(
                        image!,
                        width: 200,
                        height: 200,
                        fit: BoxFit.cover,
                      )
                    : Opacity(
                        opacity: 0,
                        child: FlutterLogo(
                          size: 200,
                        ),
                      )),
            SizedBox(
              height: 40,
            ),
            TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    Colors.black.withOpacity(0.5)),
              ),
              onPressed: () async {
                url = 'http://127.0.0.1:5000/api?image_path=' +
                    image!.path.toString();
                data = await fetchdata(url);
                var decoded = jsonDecode(data);
                setState(() {
                  output = decoded['result'][0].toString();
                  output1 = decoded['result'][1].toString();
                  percent = decoded['result'][0];
                  output = percent < 0.5 ? 'Malignant '+(((1-percent)*100).round()).toString() +'%' : "Benign "+(((percent)*100).round()).toString() + '%';
                });
              },
              child: Text(
                'Load Results',
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Poppins',
                    color: Color(0XFFE8E4EC)),
              ),
            ),
          ],
        ),
        SizedBox(
          width: 220,
        ),
        Column(
          children: [
            SizedBox(
              height: 360,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.black.withOpacity(0.5),
              ),
              width: 300,
              height: 40,
              child: Center(
                child: Text(
                  "Diagnosis",
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 30,
                    color: Color(0XFFE8E4EC),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 60,
            ),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.transparent,
                  ),
                  width: 200,
                  height: 30,
                  child: Center(
                    child: Text(
                      "Lesion Nature:",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 25,
                        color: Color(0XFFE8E4EC),
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.transparent,
                  ),
                  height: 30,
                  width: 250,
                  child: Center(
                    child: Text(
                      output,
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 25,
                        color: Color(0XFFE8E4EC),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 100,
            ),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.transparent,
                  ),
                  width: 200,
                  height: 30,
                  child: Center(
                    child: Text(
                      "Cancer Type:",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 25,
                        color: Color(0XFFE8E4EC),
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.transparent,
                  ),
                  height: 30,
                  width: 250,
                  child: Center(
                    child: Text(
                      percent < 0.5 ? output1.toString() : '------------',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 25,
                        color: Color(0XFFE8E4EC),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
