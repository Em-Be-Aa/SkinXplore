// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sized_box_for_whitespace, prefer_typing_uninitialized_variables, prefer_interpolation_to_compose_strings, use_full_hex_values_for_flutter_colors

import 'dart:convert';
import 'dart:io';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:skinxplore/constants/break_points.dart';
import 'package:skinxplore/desktop_utilities_items/chat_panel.dart';
import 'package:image_picker/image_picker.dart';
import 'package:skinxplore/desktop_utilities_items/http.dart';
import 'package:skinxplore/desktop_utilities_items/weekly_activity.dart';

class DetailExamUtility extends StatefulWidget {
  const DetailExamUtility({super.key});

  @override
  State<DetailExamUtility> createState() => _DetailExamUtilityState();
}

class _DetailExamUtilityState extends State<DetailExamUtility> {
  bool isContainerVisible = false;

  String url = '';
  var data;
  String output = '--';
  double percent = 0;
  String output1 = '--';
  File? image;
  int firstClick = 1;
  bool isLoading = true;

  Future<String> getdata() async {
    final image = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (image == null) return '';

    final imagetemp = File(image.path);
    setState(() => this.image = imagetemp);
    return '';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(whiteColor),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 300,
                      width: 750,
                      alignment: Alignment.centerLeft,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Colors.black,
                          width: 1,
                        ),
                      ),
                      child: Row(
                        children: [
                          Container(
                            height: 450,
                            width: 320,
                            alignment: Alignment.centerLeft,
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              image: DecorationImage(
                                image: AssetImage('assets/images/ribbon.png'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Container(
                                  width:
                                      50, // Adjust the size of the circle as needed
                                  height:
                                      50, // Adjust the size of the circle as needed
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(
                                        blackColor), // Change the color of the circle as needed
                                  ),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.transparent,
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/arrow.png'),
                                          alignment: Alignment.center),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 380,
                                  child: Text(
                                    'Upload skin images for instant skin cancer detection results.',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold,
                                      color: Color(blackColor),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Container(
                                    width: 200,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      color: Color(blackColor),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'View Details',
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 20,
                                          color: Color(whiteColor),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(
                          sigmaX: 10,
                          sigmaY: 10,
                        ),
                        child: Container(
                          height: 300,
                          width: 300,
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.4),
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade600,
                                offset: Offset(3, 3),
                                blurRadius: 7,
                                spreadRadius: 2,
                              ),
                              BoxShadow(
                                color: Colors.white.withOpacity(0.8),
                                offset: Offset(-3, -3),
                                blurRadius: 7,
                                spreadRadius: 2,
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 55,
                              ),
                              Center(
                                child: Container(
                                  height: 150,
                                  width: 150,
                                  child: ElevatedButton(
                                    onPressed: () => getdata(),
                                    style: ElevatedButton.styleFrom(
                                        elevation: 0,
                                        padding: EdgeInsets.zero,
                                        backgroundColor:
                                            Color(0X2C323F).withOpacity(0.8)),
                                    child: image != null
                                        ? Image.file(
                                            image!,
                                            width: 150,
                                            height: 150,
                                            fit: BoxFit.cover,
                                          )
                                        : Opacity(
                                            opacity: 0,
                                            child: FlutterLogo(
                                              size: 200,
                                            ),
                                          ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: TextButton(
                                  onPressed: () async {
                                    url =
                                        'http://127.0.0.1:5000/api?image_path=' +
                                            image!.path.toString();
                                    data = await fetchdata(url);
                                    var decoded = jsonDecode(data);
                                    setState(() {
                                      output = decoded['result'][0].toString();
                                      output1 = decoded['result'][1].toString();
                                      percent = decoded['result'][0];
                                      output = percent < 0.5
                                          ? 'Malignant '
                                          : "Benign ";
                                      firstClick = 0;
                                    });
                                  },
                                  child: Container(
                                    height: 50,
                                    width: 200,
                                    decoration: BoxDecoration(
                                      color: Color(blackColor),
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Load Results',
                                          style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontSize: 20,
                                              fontWeight: FontWeight.w100,
                                              color: Color(whiteColor)),
                                        ),
                                        SizedBox(
                                          width: 15,
                                        ),
                                        Container(
                                          width:
                                              30, // Adjust the size of the circle as needed
                                          height:
                                              30, // Adjust the size of the circle as needed
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Color(
                                                blackColor), // Change the color of the circle as needed
                                          ),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: Colors.transparent,
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/images/arrow.png'),
                                                  alignment: Alignment.center),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(
                          sigmaX: 10,
                          sigmaY: 10,
                        ),
                        child: Container(
                          height: 280,
                          width: 200,
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.4),
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade600,
                                offset: Offset(3, 3),
                                blurRadius: 7,
                                spreadRadius: 2,
                              ),
                              BoxShadow(
                                color: Colors.white.withOpacity(0.8),
                                offset: Offset(-3, -3),
                                blurRadius: 7,
                                spreadRadius: 2,
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/nature.png'),
                                      alignment: Alignment.center),
                                ),
                              ),
                              SizedBox(
                                height: 90,
                              ),
                              Text(
                                output,
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 35,
                                  fontWeight: FontWeight.bold,
                                  color: Color(blackColor),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Padding(
                                  padding: EdgeInsets.only(right: 20),
                                  child: Text(
                                    'Nature',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 20,
                                      fontWeight: FontWeight.w100,
                                      color: Color(blackColor),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 40,
                              ),
                              if (isLoading) ...[
                                SpinKitPianoWave(
                                  color: Color(blackColor),
                                  size: 15,
                                ),
                              ],
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(
                          sigmaX: 10,
                          sigmaY: 10,
                        ),
                        child: Container(
                          height: 280,
                          width: 200,
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.4),
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade600,
                                offset: Offset(3, 3),
                                blurRadius: 7,
                                spreadRadius: 2,
                              ),
                              BoxShadow(
                                color: Colors.white.withOpacity(0.8),
                                offset: Offset(-3, -3),
                                blurRadius: 7,
                                spreadRadius: 2,
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  image: DecorationImage(
                                      image:
                                          AssetImage('assets/images/type.png'),
                                      alignment: Alignment.center),
                                ),
                              ),
                              SizedBox(
                                height: 90,
                              ),
                              Text(
                                output1,
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 35,
                                  fontWeight: FontWeight.bold,
                                  color: Color(blackColor),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Padding(
                                  padding: EdgeInsets.only(right: 20),
                                  child: Text(
                                    'Type',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 20,
                                      fontWeight: FontWeight.w100,
                                      color: Color(blackColor),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 40,
                              ),
                              if (isLoading) ...[
                                SpinKitPianoWave(
                                  color: Color(blackColor),
                                  size: 15,
                                ),
                              ],
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(
                          sigmaX: 10,
                          sigmaY: 10,
                        ),
                        child: Container(
                          height: 280,
                          width: 200,
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.4),
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade600,
                                offset: Offset(3, 3),
                                blurRadius: 7,
                                spreadRadius: 2,
                              ),
                              BoxShadow(
                                color: Colors.white.withOpacity(0.8),
                                offset: Offset(-3, -3),
                                blurRadius: 7,
                                spreadRadius: 2,
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/confidence.png'),
                                      alignment: Alignment.center),
                                ),
                              ),
                              SizedBox(
                                height: 55,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  firstClick == 0
                                      ? Text(
                                          percent < 0.5
                                              ? (((1 - percent) * 100).round())
                                                  .toString()
                                              : (((percent) * 100).round())
                                                  .toString(),
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 59,
                                            fontWeight: FontWeight.bold,
                                            color: const Color.fromARGB(
                                                255, 247, 18, 2),
                                          ),
                                        )
                                      : Text(
                                          '--',
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 59,
                                            fontWeight: FontWeight.bold,
                                            color: Color(blackColor),
                                          ),
                                        ),
                                  Text(
                                    '%',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                      color: Color(blackColor),
                                    ),
                                  ),
                                ],
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Padding(
                                  padding: EdgeInsets.only(right: 20),
                                  child: Text(
                                    'Confidence',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 20,
                                      fontWeight: FontWeight.w100,
                                      color: Color(blackColor),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 40,
                              ),
                              if (isLoading) ...[
                                SpinKitPianoWave(
                                  color: Color(blackColor),
                                  size: 15,
                                ),
                              ],
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    WeeklyActivity(),
                  ],
                ),
              ],
            ),
            Visibility(
              visible: isContainerVisible,
              child: ChatPanel(),
            ),
            Positioned(
              right: 20,
              bottom: -20,
              child: Container(
                width: 100,
                height: 100,
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      isContainerVisible = !isContainerVisible;
                    });
                  },
                  child: Container(
                    width: 100, // Adjust the size of the circle as needed
                    height: 100, // Adjust the size of the circle as needed
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors
                          .transparent, // Change the color of the circle as needed
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        image: DecorationImage(
                            image: AssetImage('assets/images/skan.png'),
                            alignment: Alignment.center),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
