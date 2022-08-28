import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../constant/color.dart';

class ClaimVehicle extends StatefulWidget {
  const ClaimVehicle({Key? key}) : super(key: key);

  @override
  State<ClaimVehicle> createState() => _ClaimVehicleState();
}

class _ClaimVehicleState extends State<ClaimVehicle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: 16, right: 16, top: 16),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 16),
                      height: 54,
                      width: 54,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_back,
                            color: Color(0xFF666687),
                          )),
                    ),
                    Text(
                      "Claim Vehicle",
                      style: TextStyle(
                          fontFamily: 'DM sans medium',
                          fontWeight: FontWeight.bold,
                          fontSize: 21),
                    ),
                    Spacer(),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.menu,
                          size: 34,
                        )),
                  ],
                ),
                SizedBox(
                  height: Get.height * 0.027,
                ),
                Text(
                  "Please Fill out the correct detailsto verify\n"
                  "your vechile.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'DM sans medium',
                    color: ptext,
                  ),
                ),
                textField("Vehicle Type"),
                textField("Vehicle Number"),
                textField("Upload Rc Book"),
                textField("Add a message"),
                SizedBox(
                  height: Get.height * 0.3,
                ),
                Container(
                  height: Get.height * 0.058,
                  decoration: BoxDecoration(),
                  width: Get.width,
                  child: ElevatedButton(
                      onPressed: () {},
                      child: Text("Submit"),
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(psaff),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          )))),
                ),
                SizedBox(
                  height: Get.height * 0.2,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Padding textField(hintText) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0),
      child: TextField(
        decoration: InputDecoration(
            hintText: hintText,
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
      ),
    );
  }
}
