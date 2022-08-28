import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
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
import 'images/images.dart';
import 'login/login.dart';

class Allscreen extends StatefulWidget {
  const Allscreen({Key? key}) : super(key: key);

  @override
  State<Allscreen> createState() => _AllscreenState();
}

class _AllscreenState extends State<Allscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ElevatedButton(
                  onPressed: () {
                    Get.to(Login());
                  },
                  child: Text("Login")),
              ElevatedButton(
                  onPressed: () {
                    Get.to(Registration());
                  },
                  child: Text("Registration")),
              ElevatedButton(
                  onPressed: () {
                    Get.to(Myprofile());
                  },
                  child: Text("Profile")),
              ElevatedButton(
                  onPressed: () {
                    Get.to(ImageGallery());
                  },
                  child: Text("images")),
              ElevatedButton(
                  onPressed: () {
                    Get.to(AddContact());
                  },
                  child: Text("addcontact")),
              ElevatedButton(
                  onPressed: () {
                    Get.to(ManageContact());
                  },
                  child: Text("manage Contact")),
              ElevatedButton(
                  onPressed: () {
                    Get.to(Addvechile());
                  },
                  child: Text("add vehicle")),
              ElevatedButton(
                  onPressed: () {
                    Get.to(ManageVehicle());
                  },
                  child: Text("Manage vehicle")),
              ElevatedButton(
                  onPressed: () {
                    Get.to(ClaimVehicle());
                  },
                  child: Text("claim vehicle")),
              ElevatedButton(
                  onPressed: () {
                    Get.to(ScanQR());
                  },
                  child: Text("scanqr")),
              ElevatedButton(
                  onPressed: () {
                    Get.to(ScanQR2());
                  },
                  child: Text("scanqr2")),
              ElevatedButton(
                  onPressed: () {
                    Get.to(ScanAgain());
                  },
                  child: Text("scan again")),
              ElevatedButton(
                  onPressed: () {
                    Get.to(Searchvehicle());
                  },
                  child: Text("search vehicle")),
            ],
          ),
        ),
      ),
    );
  }
}
