import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:okappp/profile/myprofile.dart';
import 'package:okappp/registration/registration.dart';
import 'package:okappp/scancode/scancode.dart';
import 'package:okappp/scancode/scanqr2.dart';
import 'package:okappp/scancode/scanqragain.dart';
import 'package:okappp/searchvehicle/searchvehicle.dart';

import 'addcontact/addcontact.dart';
import 'addcontact/managecontact.dart';
import 'addvehicle/addvehicle.dart';
import 'addvehicle/claimvehicle.dart';
import 'addvehicle/managevehicle.dart';
import 'allscreen.dart';
import 'constant/color.dart';
import 'images/images.dart';
import 'login/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFF5F5F5),
        hintColor: ptext,
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const Allscreen(),
    );
  }
}
